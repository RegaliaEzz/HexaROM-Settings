.class public final Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private isFinished:Z

.field private isQuickConnect:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            "Landroid/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDeviceNameEditText:Landroid/widget/EditText;

.field private mDeviceRenamePref:Landroid/preference/Preference;

.field public mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mIsDismissed:Z

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mNameEditedButtonEnabled:Z

.field private mProfileContainer:Landroid/preference/PreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameButton:Landroid/widget/Button;

.field private mRenameTextWatcher:Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;

.field mTempName:Ljava/lang/String;

.field private mTextInputLayout:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 93
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    .line 133
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isQuickConnect:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isFinished:Z

    .line 138
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 357
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/support/design/widget/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isQuickConnect:Z

    return v0
.end method

.method private addPreferencesForProfiles()V
    .locals 6

    .prologue
    .line 398
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 399
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 400
    .local v2, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    instance-of v3, v2, Lcom/android/settingslib/bluetooth/BleAudioProfile;

    if-nez v3, :cond_0

    .line 402
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPreferencesForProfiles :: profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .line 405
    .local v1, "pref":Landroid/preference/SwitchPreference;
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 408
    .end local v1    # "pref":Landroid/preference/SwitchPreference;
    .end local v2    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 409
    return-void
.end method

.method private createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/preference/SwitchPreference;
    .locals 6
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 431
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createProfileSwitchPreference :: profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v1, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 433
    .local v1, "pref":Landroid/preference/SwitchPreference;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 434
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 435
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResourceTts(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setTitleDescription(I)V

    .line 436
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 437
    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 438
    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 441
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 442
    .local v0, "iconResId":Landroid/graphics/drawable/Drawable;
    instance-of v3, p1, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v3, :cond_1

    .line 443
    const v3, 0x7f020221

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 447
    :goto_0
    if-eqz v0, :cond_0

    .line 448
    const v3, 0x7f0a0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/android/settings/bluetooth/Utils;->makeBitmapIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 450
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 453
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfileSwitchPreference(Landroid/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 455
    return-object v1

    .line 445
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getProfileOf(Landroid/preference/Preference;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .locals 5
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 707
    instance-of v3, p1, Landroid/preference/SwitchPreference;

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PAN"

    if-eq v3, v4, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-object v2

    .line 710
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 714
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 2
    .param p1, "profIndex"    # I

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private isMdmPolicy(I)Z
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 771
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 772
    .local v0, "service":Landroid/sec/enterprise/BluetoothPolicy;
    invoke-virtual {v0, p1}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 773
    const-string v1, "DeviceProfilesSettings"

    const-string v2, "!isProfileEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v1, 0x0

    .line 776
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onProfileClicked(Landroid/preference/Preference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 12
    .param p1, "profilePref"    # Landroid/preference/Preference;
    .param p2, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 511
    const-string v9, "DeviceProfilesSettings"

    const-string v10, "onProfileClicked :: "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 514
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PBAP Server"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 515
    iget-object v8, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v8

    if-ne v8, v4, :cond_0

    move v4, v7

    .line 517
    .local v4, "newPermission":I
    :cond_0
    const-string v8, "DeviceProfilesSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onProfileClicked :: [KEY_PBAP_SERVER] newPermission = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isMdmPolicy(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 519
    iget-object v8, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v8, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 523
    :goto_0
    check-cast p1, Landroid/preference/SwitchPreference;

    .end local p1    # "profilePref":Landroid/preference/Preference;
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfileSwitchPreference(Landroid/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 587
    .end local v4    # "newPermission":I
    :cond_1
    :goto_1
    return-void

    .line 521
    .restart local v4    # "newPermission":I
    .restart local p1    # "profilePref":Landroid/preference/Preference;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    goto :goto_0

    .line 525
    .end local v4    # "newPermission":I
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MAP"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 526
    iget-object v8, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v8

    if-ne v8, v4, :cond_4

    move v4, v7

    .line 528
    .restart local v4    # "newPermission":I
    :cond_4
    const-string v7, "DeviceProfilesSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onProfileClicked :: [KEY_PROFILE_MAP] newPermission = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 530
    check-cast p1, Landroid/preference/SwitchPreference;

    .end local p1    # "profilePref":Landroid/preference/Preference;
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfileSwitchPreference(Landroid/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 532
    .end local v4    # "newPermission":I
    .restart local p1    # "profilePref":Landroid/preference/Preference;
    :cond_5
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SAP"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 533
    iget-object v8, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v8

    if-ne v8, v4, :cond_6

    move v4, v7

    .line 535
    .restart local v4    # "newPermission":I
    :cond_6
    const-string v7, "DeviceProfilesSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onProfileClicked :: [KEY_PROFILE_SAP] newPermission = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSimPermissionChoice(I)V

    .line 537
    check-cast p1, Landroid/preference/SwitchPreference;

    .end local p1    # "profilePref":Landroid/preference/Preference;
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfileSwitchPreference(Landroid/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 541
    .end local v4    # "newPermission":I
    .restart local p1    # "profilePref":Landroid/preference/Preference;
    :cond_7
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 542
    .local v6, "status":I
    const/4 v5, -0x1

    .line 543
    .local v5, "profile_state":I
    sget-boolean v9, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->DBG:Z

    if-eqz v9, :cond_8

    const-string v9, "DeviceProfilesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onProfileClicked :: device : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", profile : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", getstate : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_8
    if-ne v6, v7, :cond_a

    move v1, v4

    .local v1, "isConnected":Z
    :goto_2
    move-object v7, p1

    .line 545
    check-cast v7, Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 547
    if-eqz v1, :cond_b

    .line 548
    const-string v7, "DeviceProfilesSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calling disconnect of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, p1

    .line 549
    check-cast v7, Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-ne v7, v4, :cond_9

    check-cast p1, Landroid/preference/SwitchPreference;

    .end local p1    # "profilePref":Landroid/preference/Preference;
    invoke-virtual {p1, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 550
    :cond_9
    const/4 v5, 0x0

    .line 551
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-interface {p2, v7, v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 565
    :goto_3
    new-instance v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 580
    .local v2, "mHandler":Landroid/os/Handler;
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 581
    .local v3, "msg":Landroid/os/Message;
    iput v5, v3, Landroid/os/Message;->what:I

    .line 582
    const-wide/16 v8, 0x12c

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 584
    const-string v7, "1"

    const-string v8, "service.bt.security.policy.mode"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 585
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto/16 :goto_1

    .end local v1    # "isConnected":Z
    .end local v2    # "mHandler":Landroid/os/Handler;
    .end local v3    # "msg":Landroid/os/Message;
    .restart local p1    # "profilePref":Landroid/preference/Preference;
    :cond_a
    move v1, v8

    .line 544
    goto :goto_2

    .line 559
    .restart local v1    # "isConnected":Z
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PAN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 560
    invoke-interface {p2, v0, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    :cond_c
    move-object v7, p1

    .line 561
    check-cast v7, Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_d

    check-cast p1, Landroid/preference/SwitchPreference;

    .end local p1    # "profilePref":Landroid/preference/Preference;
    invoke-virtual {p1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 562
    :cond_d
    const/4 v5, 0x1

    goto :goto_3
.end method

.method private refresh()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 595
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "deviceName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 598
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceRenamePref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 603
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 604
    return-void
.end method

.method private refreshProfileSwitchPreference(Landroid/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 10
    .param p1, "profilePref"    # Landroid/preference/SwitchPreference;
    .param p2, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 666
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 667
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    sget-boolean v6, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "DeviceProfilesSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshProfileSwitchPreference : device = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", profile = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v3

    .line 670
    .local v3, "status":I
    if-eq v3, v9, :cond_1

    if-nez v3, :cond_3

    :cond_1
    move v1, v5

    .line 672
    .local v1, "mEnabled":Z
    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 674
    instance-of v6, p2, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v6, :cond_5

    .line 675
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v6

    if-ne v6, v5, :cond_4

    :goto_1
    invoke-virtual {p1, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 677
    const-string v4, "DeviceProfilesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshProfileSwitchPreference : MapProfile, setchecked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_2
    :goto_2
    return-void

    .end local v1    # "mEnabled":Z
    :cond_3
    move v1, v4

    .line 670
    goto :goto_0

    .restart local v1    # "mEnabled":Z
    :cond_4
    move v5, v4

    .line 675
    goto :goto_1

    .line 679
    :cond_5
    instance-of v6, p2, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v6, :cond_8

    .line 681
    new-array v2, v5, [Ljava/lang/String;

    sget-object v6, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v6}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 682
    .local v2, "selectionArgs":[Ljava/lang/String;
    aget-object v6, v2, v4

    invoke-static {v6}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 683
    const-string v6, "DeviceProfilesSettings"

    const-string v7, "PBAP service blocked by MDM policy"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 689
    :cond_6
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v6

    if-ne v6, v5, :cond_7

    :goto_3
    invoke-virtual {p1, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 691
    const-string v4, "DeviceProfilesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshProfileSwitchPreference : PbapServerProfile, setchecked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v5, v4

    .line 689
    goto :goto_3

    .line 692
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    :cond_8
    instance-of v6, p2, Lcom/android/settingslib/bluetooth/SapProfile;

    if-eqz v6, :cond_a

    .line 693
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v6

    if-ne v6, v5, :cond_9

    :goto_4
    invoke-virtual {p1, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 695
    const-string v4, "DeviceProfilesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshProfileSwitchPreference : SapProfile, setchecked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    move v5, v4

    .line 693
    goto :goto_4

    .line 697
    :cond_a
    instance-of v4, p2, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v4, :cond_b

    .line 698
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 700
    :cond_b
    if-eqz v1, :cond_2

    .line 701
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2
.end method

.method private refreshProfiles()V
    .locals 13

    .prologue
    .line 607
    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 608
    .local v7, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    instance-of v10, v7, Lcom/android/settingslib/bluetooth/BleAudioProfile;

    if-nez v10, :cond_0

    .line 610
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    .line 611
    .local v8, "profilePref":Landroid/preference/SwitchPreference;
    if-nez v8, :cond_2

    .line 612
    invoke-direct {p0, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/preference/SwitchPreference;

    move-result-object v8

    .line 613
    instance-of v10, v7, Lcom/android/settingslib/bluetooth/SapProfile;

    if-eqz v10, :cond_1

    instance-of v10, v7, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v10, :cond_1

    instance-of v10, v7, Lcom/android/settingslib/bluetooth/MapProfile;

    if-nez v10, :cond_0

    .line 615
    :cond_1
    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 618
    :cond_2
    invoke-direct {p0, v8, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfileSwitchPreference(Landroid/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 622
    .end local v7    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .end local v8    # "profilePref":Landroid/preference/SwitchPreference;
    :cond_3
    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v5

    .line 623
    .local v5, "pbapPermission":I
    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v2

    .line 624
    .local v2, "mPbapServerProfile":Lcom/android/settingslib/bluetooth/PbapServerProfile;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_4

    if-eqz v5, :cond_4

    .line 626
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/preference/SwitchPreference;

    move-result-object v6

    .line 627
    .local v6, "pref":Landroid/preference/SwitchPreference;
    const-string v10, "DeviceProfilesSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Refresh profile preference : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 631
    .end local v6    # "pref":Landroid/preference/SwitchPreference;
    :cond_4
    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v4

    .line 632
    .local v4, "mapPermission":I
    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;

    move-result-object v1

    .line 633
    .local v1, "mMapProfile":Lcom/android/settingslib/bluetooth/MapProfile;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/MapProfile;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_5

    if-eqz v4, :cond_5

    .line 635
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/preference/SwitchPreference;

    move-result-object v6

    .line 636
    .restart local v6    # "pref":Landroid/preference/SwitchPreference;
    const-string v10, "DeviceProfilesSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Refresh profile preference : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/MapProfile;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 640
    .end local v6    # "pref":Landroid/preference/SwitchPreference;
    :cond_5
    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v9

    .line 641
    .local v9, "sapPermission":I
    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getSapProfile()Lcom/android/settingslib/bluetooth/SapProfile;

    move-result-object v3

    .line 642
    .local v3, "mSapProfile":Lcom/android/settingslib/bluetooth/SapProfile;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/SapProfile;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_6

    if-eqz v9, :cond_6

    .line 644
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/preference/SwitchPreference;

    move-result-object v6

    .line 645
    .restart local v6    # "pref":Landroid/preference/SwitchPreference;
    const-string v10, "DeviceProfilesSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Refresh profile preference : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/SapProfile;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 649
    .end local v6    # "pref":Landroid/preference/SwitchPreference;
    :cond_6
    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 650
    .restart local v7    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    instance-of v10, v7, Lcom/android/settingslib/bluetooth/SapProfile;

    if-nez v10, :cond_7

    instance-of v10, v7, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-nez v10, :cond_7

    instance-of v10, v7, Lcom/android/settingslib/bluetooth/MapProfile;

    if-nez v10, :cond_7

    .line 655
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 656
    .local v8, "profilePref":Landroid/preference/Preference;
    if-eqz v8, :cond_7

    .line 657
    const-string v10, "DeviceProfilesSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from profile list"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 661
    .end local v7    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .end local v8    # "profilePref":Landroid/preference/Preference;
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 662
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 413
    .local v0, "numProfiles":I
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 415
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 418
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method

.method private showRenameDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 721
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 722
    .local v1, "mLayoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040047

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 723
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0d00e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TextInputLayout;

    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 724
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNameEditText:Landroid/widget/EditText;

    .line 725
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 727
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e0300

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0123

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 733
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNameEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 734
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 735
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "maxLength"

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 736
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNameEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 743
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNameEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameTextWatcher:Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 744
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNameEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 748
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 750
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameButton:Landroid/widget/Button;

    .line 751
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 752
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_1
    const-string v3, "DeviceProfilesSettings"

    const-string v4, "mRenameButton is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unpairDevice()V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 764
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 781
    const/16 v0, 0x19

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 221
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "device"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 226
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 227
    const-string v4, "device"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    move-object v1, v4

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 228
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iput-boolean v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isQuickConnect:Z

    .line 238
    :goto_0
    const v4, 0x7f080025

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesFromResource(I)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 240
    const-string v4, "profile_container"

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 241
    const-string v4, "rename_device"

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceRenamePref:Landroid/preference/Preference;

    .line 243
    if-nez v1, :cond_3

    .line 244
    const-string v4, "DeviceProfilesSettings"

    const-string v5, "Activity started without a remote Bluetooth device"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iput-boolean v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isFinished:Z

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 288
    :cond_0
    :goto_1
    return-void

    .line 230
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    if-eqz p1, :cond_2

    .line 231
    const-string v4, "device"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 232
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "remote_device_rename_edited"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    goto :goto_0

    .line 234
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 235
    const-string v4, "device"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 249
    :cond_3
    new-instance v4, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameTextWatcher:Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 251
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 253
    .local v2, "deviceManager":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 254
    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 255
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v4, :cond_5

    .line 256
    if-nez p1, :cond_4

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isQuickConnect:Z

    if-eqz v4, :cond_5

    .line 257
    :cond_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 258
    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 262
    :cond_5
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v4, :cond_6

    .line 263
    const-string v4, "DeviceProfilesSettings"

    const-string v5, "Device not found, cannot connect to it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iput-boolean v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isFinished:Z

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 269
    :cond_6
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "deviceName":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isQuickConnect:Z

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_8

    .line 276
    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 279
    :cond_8
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceRenamePref:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    .line 284
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.bluetooth"

    const-string v6, "BPDO"

    const-string v7, "Detail_Setting"

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    .line 294
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 297
    :cond_0
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 592
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 342
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 344
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIsDismissed:Z

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 355
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 492
    instance-of v1, p1, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 493
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/preference/Preference;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 494
    .local v0, "prof":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_1

    .line 495
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.bluetooth"

    const-string v3, "BPDO"

    const-string v4, "Profile"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Landroid/preference/Preference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 504
    :goto_0
    const/4 v1, 0x0

    .line 507
    .end local v0    # "prof":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :goto_1
    return v1

    .line 502
    .restart local v0    # "prof":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_1
    const-string v1, "DeviceProfilesSettings"

    const-string v2, "prof is null in onPreferenceChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 507
    .end local v0    # "prof":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 460
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "key":Ljava/lang/String;
    const-string v2, "unpair"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 462
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.bluetooth"

    const-string v4, "BDSC"

    const-string v5, "ConnectToUnpair"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.bluetooth"

    const-string v4, "BPDO"

    const-string v5, "Unpair"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_1
    sget-boolean v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "DeviceProfilesSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick :: Unpair to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isConneceted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->unpairDevice()V

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 475
    const/4 v2, 0x1

    .line 487
    :goto_0
    return v2

    .line 476
    :cond_3
    const-string v2, "rename_device"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 477
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showRenameDialog()V

    .line 487
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 478
    :cond_5
    const-string v2, "PAN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 479
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/preference/Preference;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    .line 480
    .local v1, "prof":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    if-eqz v1, :cond_6

    .line 481
    invoke-direct {p0, p2, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Landroid/preference/Preference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 483
    :cond_6
    const-string v2, "DeviceProfilesSettings"

    const-string v3, "prof is null in onPreferenceTreeClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 314
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 315
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isFinished:Z

    if-eqz v3, :cond_2

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 317
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIsDismissed:Z

    .line 338
    :goto_0
    return-void

    .line 321
    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 322
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v3, :cond_4

    .line 323
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 324
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 325
    const-string v3, "DeviceProfilesSettings"

    const-string v4, "onResume() bond state is BOND_NONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 335
    :cond_4
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 336
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 328
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() catch IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 303
    :cond_0
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "mCachedDevice is null during saving"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string v0, "device"

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 306
    const-string v0, "remote_device_rename_edited"

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
