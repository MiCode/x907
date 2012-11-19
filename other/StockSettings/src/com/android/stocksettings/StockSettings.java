package com.android.stocksettings;

import android.app.ActionBar;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.SystemProperties;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.util.Log;
import android.os.OppoManager;

public class StockSettings extends PreferenceActivity{

    private final String POWER_SAVE_METHOD = "power_save_method";
    private final String TOGGLE_SMART_CHARGE = "toggle_smart_charge";
    private final String TOGGLE_SUPPLY_CHARGE = "toggle_supply_charge";
    private final String CHARGER_LEVEL_VIEW = "charger_level_view";
    
    private CheckBoxPreference mPowerSaveMode;
    private CheckBoxPreference mSmartCharger;
    private CheckBoxPreference mSupplyCharger;
    private IntelligentBatteryLevelPreference mChargerPre;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // TODO Auto-generated method stub
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.stock_settings);
        mPowerSaveMode = (CheckBoxPreference) findPreference(POWER_SAVE_METHOD);
        mSmartCharger = (CheckBoxPreference) findPreference(TOGGLE_SMART_CHARGE);
        mSupplyCharger = (CheckBoxPreference) findPreference(TOGGLE_SUPPLY_CHARGE);
        mChargerPre = (IntelligentBatteryLevelPreference) findPreference(CHARGER_LEVEL_VIEW);
    }

    
    @Override
    protected void onResume() {
        // TODO Auto-generated method stub
        super.onResume();
        if(OppoManager.getSaveModeState() == 1) {
            mPowerSaveMode.setChecked(true);
        } else {
            mPowerSaveMode.setChecked(false);
        }
        boolean smart = SystemProperties.getBoolean("persist.sys.smart.charge.on", false);
        mSmartCharger.setChecked(smart);
        mSupplyCharger.setChecked(SystemProperties.getBoolean("persist.sys.charge.on", false));
        //mSupplyCharger.setEnabled(!smart);
        registerReceiver(mBatteryInfoReceiver,new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
        mChargerPre.resume();
    }
    
    


    @Override
    protected void onPause() {
        // TODO Auto-generated method stub
        super.onPause();
        unregisterReceiver(mBatteryInfoReceiver);
        mChargerPre.pause();
    }


    @Override
    @Deprecated
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        // TODO Auto-generated method stub
        if(preference == mPowerSaveMode) {
            if(mPowerSaveMode.isChecked()) {
                if(OppoManager.setSaveModeState(1) != -1 ) {
                    Settings.System.putInt(getContentResolver(),POWER_SAVE_METHOD,1);
                }
            } else {
                if(OppoManager.setSaveModeState(0) !=-1 ){
                    Settings.System.putInt(getContentResolver(),POWER_SAVE_METHOD,0);
                }
            }
        } else if (preference == mSmartCharger) {
            setSmartCharger(mSmartCharger.isChecked());
        } else if (preference == mSupplyCharger) {
            setSupplyCharger(mSupplyCharger.isChecked());
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }
    
    private void setSmartCharger(boolean enable) {
        if(enable) {
            SystemProperties.set("persist.sys.smart.charge.on", "1");
        } else {
            SystemProperties.set("persist.sys.smart.charge.on", "0");
        }
    }
    
    private void setSupplyCharger(boolean enable) {
        if(enable) {
            SystemProperties.set("persist.sys.charge.on", "1");
        } else {
            SystemProperties.set("persist.sys.charge.on", "0");
        }
    }
    
    private BroadcastReceiver mBatteryInfoReceiver = new BroadcastReceiver() {

        @Override
        public void onReceive(Context context, Intent intent) {
            // TODO Auto-generated method stub
            String action = intent.getAction();
            if(action.equals(Intent.ACTION_BATTERY_CHANGED)) {
                boolean isIntelligentCharging = intent.getBooleanExtra("accessorypresent", false);
                mSmartCharger.setEnabled(isIntelligentCharging);
                mSupplyCharger.setEnabled(isIntelligentCharging);
            }
        }
        
    };

}
