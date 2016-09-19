.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 360
    packed-switch p2, :pswitch_data_0

    .line 384
    :goto_0
    return-void

    .line 362
    :pswitch_0
    const-string v1, "DeviceProfilesSettings"

    const-string v2, "AlertDialog OnClickListener :: Positive "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNameEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "newName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isQuickConnect:Z
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$700(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 371
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.bluetooth"

    const-string v3, "BPDO"

    const-string v4, "Rename"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 379
    .end local v0    # "newName":Ljava/lang/String;
    :pswitch_1
    const-string v1, "DeviceProfilesSettings"

    const-string v2, "AlertDialog OnClickListener :: Negative "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    .line 381
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
