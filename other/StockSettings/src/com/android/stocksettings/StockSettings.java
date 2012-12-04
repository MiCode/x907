
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
import android.view.MenuItem;
import android.os.OppoManager;

public class StockSettings extends PreferenceActivity {

    private final String TOUCHKEY_LIGHT = "touchkey_light";
    private final String POWER_SAVE_METHOD = "power_save_method";
    private final String TOGGLE_SMART_CHARGE = "toggle_smart_charge";
    private final String TOGGLE_SUPPLY_CHARGE = "toggle_supply_charge";
    private final String CHARGER_LEVEL_VIEW = "charger_level_view";

    private CheckBoxPreference mTouchKeyLight;
    private CheckBoxPreference mPowerSaveMode;
    private CheckBoxPreference mSmartCharger;
    private CheckBoxPreference mSupplyCharger;
    private IntelligentBatteryLevelPreference mChargerPre;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // TODO Auto-generated method stub
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setHomeButtonEnabled(true);
        }
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.stock_settings);
        mTouchKeyLight = (CheckBoxPreference) findPreference(TOUCHKEY_LIGHT);
        mPowerSaveMode = (CheckBoxPreference) findPreference(POWER_SAVE_METHOD);
        mSmartCharger = (CheckBoxPreference) findPreference(TOGGLE_SMART_CHARGE);
        mSupplyCharger = (CheckBoxPreference) findPreference(TOGGLE_SUPPLY_CHARGE);
        mChargerPre = (IntelligentBatteryLevelPreference) findPreference(CHARGER_LEVEL_VIEW);
    }

    @Override
    protected void onResume() {
        // TODO Auto-generated method stub
        super.onResume();
        mTouchKeyLight.setChecked(Settings.System.getInt(getContentResolver(), "button_light_mode",
                1) == 1);
        mPowerSaveMode.setChecked(OppoManager.getSaveModeState() == 1);
        boolean smart = SystemProperties.getBoolean("persist.sys.smart.charge.on", false);
        mSmartCharger.setChecked(smart);
        mSupplyCharger.setChecked(SystemProperties.getBoolean("persist.sys.charge.on", false));
        // mSupplyCharger.setEnabled(!smart);
        registerReceiver(mBatteryInfoReceiver, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
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
        if (preference == mTouchKeyLight) {
            Settings.System.putInt(getContentResolver(), "button_light_mode",
                    mTouchKeyLight.isChecked() ? 1 : 2);
        } else if (preference == mPowerSaveMode) {
            int saveModeState = mPowerSaveMode.isChecked() ? 1 : 0;
            if (OppoManager.setSaveModeState(saveModeState) != -1) {
                Settings.System.putInt(getContentResolver(), POWER_SAVE_METHOD, saveModeState);
            }
        } else if (preference == mSmartCharger) {
            setSmartCharger(mSmartCharger.isChecked());
        } else if (preference == mSupplyCharger) {
            setSupplyCharger(mSupplyCharger.isChecked());
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }
    
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch(item.getItemId()){
            case android.R.id.home:
                finish();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    private void setSmartCharger(boolean enable) {
        if (enable) {
            SystemProperties.set("persist.sys.smart.charge.on", "1");
        } else {
            SystemProperties.set("persist.sys.smart.charge.on", "0");
        }
    }

    private void setSupplyCharger(boolean enable) {
        if (enable) {
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
            if (action.equals(Intent.ACTION_BATTERY_CHANGED)) {
                boolean isIntelligentCharging = intent.getBooleanExtra("accessorypresent", false);
                mSmartCharger.setEnabled(isIntelligentCharging);
                mSupplyCharger.setEnabled(isIntelligentCharging);
            }
        }

    };

}
