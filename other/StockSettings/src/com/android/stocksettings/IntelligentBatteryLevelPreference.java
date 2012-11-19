package com.android.stocksettings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.preference.Preference;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class IntelligentBatteryLevelPreference extends Preference {

    private int mBatLevel;
    private int mStatus;
    private ImageView mChargeIcon;
    private ImageView mImage;
    private Context mContext;
    
    public IntelligentBatteryLevelPreference(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
        // TODO Auto-generated constructor stub
    }
    
    public IntelligentBatteryLevelPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        // TODO Auto-generated constructor stub
        setLayoutResource(R.layout.battery_percentage_layout);
        mContext = context;
        mStatus = BatteryManager.BATTERY_STATUS_DISCHARGING;
    }

    @Override
    protected void onBindView(View view) {
        // TODO Auto-generated method stub
        super.onBindView(view);
        mImage = (ImageView) view.findViewById(R.id.icon);
        mChargeIcon = (ImageView) view.findViewById(R.id.charge_icon);
        refreshUI();
    }

    private void refreshUI() {
        if(mStatus == BatteryManager.BATTERY_STATUS_CHARGING) {
            if(mImage != null){
                mImage.setImageDrawable(null);
                mImage.setImageResource(R.drawable.intelligent_battery_charge_icon);
                mImage.setImageLevel(mBatLevel);
            }
            if(mChargeIcon != null ) {
                mChargeIcon.setVisibility(View.VISIBLE);
            }
        } else if(mStatus == BatteryManager.BATTERY_STATUS_UNKNOWN) {
            if(mImage != null){
                mImage.setImageDrawable(null);
                mImage.setImageResource(R.drawable.battery_charger_unknown);
            }
        } else {
            if(mImage != null){
                mImage.setImageDrawable(null);
                mImage.setImageResource(R.drawable.intelligent_battery_nocharger_icon);
                mImage.setImageLevel(mBatLevel);
                if(mChargeIcon != null ) {
                    mChargeIcon.setVisibility(View.INVISIBLE);
                }
            }
        }
    }
    
    public void resume() {
        mContext.registerReceiver(mBatteryInfoReceiver, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
    }
    
    public void pause() {
        mContext.unregisterReceiver(mBatteryInfoReceiver);
    }
    
    private BroadcastReceiver mBatteryInfoReceiver = new BroadcastReceiver() {

        @Override
        public void onReceive(Context context, Intent intent) {
            // TODO Auto-generated method stub
            String action = intent.getAction();
            if(action.equals(Intent.ACTION_BATTERY_CHANGED)) {
                mBatLevel = intent.getIntExtra("accessorycapacity", 0);
                mStatus = intent.getIntExtra("accessorystatus", BatteryManager.BATTERY_STATUS_UNKNOWN);
                refreshUI();
            }
        }
        
    };
}
