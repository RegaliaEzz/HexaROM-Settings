.class public Lcom/android/settings/personalpage/PersonalPageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PersonalPageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private LockType:I

.field edit:Landroid/content/SharedPreferences$Editor;

.field private isSharedDevice:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mIconResizer:Lcom/android/settings/IconResizer;

.field private mLinearLayout:[Landroid/widget/LinearLayout;

.field private mLockTypePref:Landroid/preference/Preference;

.field private mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

.field private final mPersonalPageObserver:Landroid/database/ContentObserver;

.field private mPositiveClick:Ljava/lang/Boolean;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 493
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageSettings$5;

    invoke-direct {v0}, Lcom/android/settings/personalpage/PersonalPageSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/personalpage/PersonalPageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPositiveClick:Ljava/lang/Boolean;

    .line 89
    iput-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->isSharedDevice:Z

    .line 94
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/personalpage/PersonalPageSettings$1;-><init>(Lcom/android/settings/personalpage/PersonalPageSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/personalpage/PersonalPageSettings;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/personalpage/PersonalPageSettings;->callLockType(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/personalpage/PersonalPageSettings;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/personalpage/PersonalPageSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPositiveClick:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/personalpage/PersonalPageSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/personalpage/PersonalPageSettings;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPositiveClick:Ljava/lang/Boolean;

    return-object p1
.end method

.method private callLockType(I)V
    .locals 8
    .param p1, "requestCode"    # I

    .prologue
    .line 410
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 411
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "firstStart"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e11b9

    const/4 v4, 0x0

    move-object v5, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v7

    .line 417
    .local v7, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private requestSecretBoxVerify(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "bCheck"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "personal_mode_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 449
    .local v0, "State":I
    move-object v1, p1

    .line 452
    .local v1, "bCheckSignature":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 453
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 456
    :cond_0
    const-string v4, "PersonalPageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendVerificationRequest with bCheck: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", State :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", so bCheckSignature:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.android.personalpage.action.ACTION_SHOW_DISCLAIMER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.personalpage.service"

    const-string v5, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string v4, "without_verify"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 462
    return-void
.end method

.method private showDisclaimerPopup()V
    .locals 6

    .prologue
    .line 149
    const-string v2, ""

    .line 150
    .local v2, "mDisclaimerTitle":Ljava/lang/String;
    const-string v1, ""

    .line 152
    .local v1, "mDisclaimerMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e11c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e11c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/personalpage/PersonalPageSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/personalpage/PersonalPageSettings$4;-><init>(Lcom/android/settings/personalpage/PersonalPageSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e07d6

    new-instance v5, Lcom/android/settings/personalpage/PersonalPageSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/personalpage/PersonalPageSettings$3;-><init>(Lcom/android/settings/personalpage/PersonalPageSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 178
    return-void
.end method

.method private updateApplistUI()V
    .locals 21

    .prologue
    .line 212
    const-string v17, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/personalpage/PersonalPageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 213
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v17, 0x7f040169

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 215
    .local v8, "guideView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f110096

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 218
    .local v6, "arrString":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const v17, 0x7f0d03a5

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    aput-object v17, v18, v19

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const v17, 0x7f0d03a7

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    aput-object v17, v18, v19

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    const v17, 0x7f0d03a9

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    aput-object v17, v18, v19

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    const v17, 0x7f0d03ab

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    aput-object v17, v18, v19

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    const v17, 0x7f0d03ad

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    aput-object v17, v18, v19

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    const v17, 0x7f0d03af

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    aput-object v17, v18, v19

    .line 227
    const-string v17, "ro.product.name"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 229
    .local v13, "productName":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_4

    .line 230
    const-string v17, "hero"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 231
    aget-object v17, v6, v9

    const-string v18, "video"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 232
    const-string v17, "com.samsung.android.video"

    aput-object v17, v6, v9

    .line 245
    :cond_0
    :goto_1
    aget-object v14, v6, v9

    .line 249
    .local v14, "s":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 250
    .local v4, "ApplicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 252
    .local v5, "appName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 253
    .local v12, "pkgIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mIconResizer:Lcom/android/settings/IconResizer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 255
    .local v11, "mDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/personalpage/PersonalPageSettings;->getApplistIconSize(I)I

    move-result v19

    const/16 v20, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/personalpage/PersonalPageSettings;->getApplistIconSize(I)I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 259
    .local v16, "v":Landroid/view/View;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 260
    move-object/from16 v0, v16

    check-cast v0, Landroid/widget/TextView;

    move-object v15, v0

    .line 261
    .local v15, "tv":Landroid/widget/TextView;
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v15, v11, v0, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v4    # "ApplicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "appName":Ljava/lang/String;
    .end local v11    # "mDrawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "pkgIcon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "tv":Landroid/widget/TextView;
    .end local v16    # "v":Landroid/view/View;
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 235
    .end local v14    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 236
    aget-object v17, v6, v9

    const-string v18, "video"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 237
    const-string v17, "com.samsung.android.onlinevideo"

    aput-object v17, v6, v9

    goto/16 :goto_1

    .line 238
    :cond_3
    aget-object v17, v6, v9

    const-string v18, "music"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 239
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v17

    if-nez v17, :cond_0

    .line 240
    const-string v17, "com.samsung.android.app.music.chn"

    aput-object v17, v6, v9

    goto/16 :goto_1

    .line 265
    .restart local v14    # "s":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 266
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    const-string v17, "PersonalPageSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : not Installed"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 271
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getListView()Landroid/widget/ListView;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v8, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 272
    return-void
.end method

.method private updateAutoDisableCheckbox()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_auto_disable_when_screen_off"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 365
    .local v0, "bAutoMode":Z
    :cond_0
    const-string v1, "PersonalPageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAutoDisableCheckbox() EnableScreenlock is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 370
    :cond_1
    return-void
.end method


# virtual methods
.method public getApplistIconSize(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 277
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 278
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "density":F
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 282
    int-to-float v2, p1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 514
    const/16 v0, 0x57

    return v0
.end method

.method public initPref()V
    .locals 2

    .prologue
    .line 316
    const-string v0, "personalpage_lock_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    .line 317
    const-string v0, "personalpage_auto_disable_screen_off"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

    .line 318
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 320
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 322
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 186
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->isSharedDevice:Z

    .line 190
    const-string v2, "PersonalPageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SharedDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->isSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updateApplistUI()V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 197
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 198
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 199
    new-instance v2, Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/personalpage/PersonalPageEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Z)V

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->initPref()V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updatePersonalPagepage()V

    .line 206
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 208
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 466
    packed-switch p1, :pswitch_data_0

    .line 483
    :goto_0
    :pswitch_0
    return-void

    .line 468
    :pswitch_1
    const-string v0, "PersonalPageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_CODE_LOCK_TYPE_QUIT received - resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    if-eqz p2, :cond_0

    .line 472
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->requestSecretBoxVerify(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 474
    :cond_0
    const-string v0, "PersonalPageSettings"

    const-string v1, "Failed Configure Personalpage lock type."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    :pswitch_2
    const-string v0, "PersonalPageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_CODE_LOCK_TYPE_CHANGE received - resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mContext:Landroid/content/Context;

    .line 108
    const v2, 0x7f080088

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageSettings;->addPreferencesFromResource(I)V

    .line 109
    new-instance v2, Lcom/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mIconResizer:Lcom/android/settings/IconResizer;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 112
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 113
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "do_not_show_disclaimer"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 114
    .local v0, "do_not_show_disclaimer":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->edit:Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->LockType:I

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "forPrivateBackupKey"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 120
    .local v1, "mSetToPrivateLock":Z
    if-eqz v1, :cond_0

    .line 121
    const/16 v2, 0x66

    invoke-direct {p0, v2}, Lcom/android/settings/personalpage/PersonalPageSettings;->callLockType(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 125
    :cond_0
    iget v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->LockType:I

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->showDisclaimerPopup()V

    .line 130
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mFilter:Landroid/content/IntentFilter;

    .line 131
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.settings.PERSONALPAGE_ACTIVITY_LAUNCH"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.settings.PERSONALPAGE_ACTIVITY_LOCKTYPE_LAUNCH"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    new-instance v2, Lcom/android/settings/personalpage/PersonalPageSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/personalpage/PersonalPageSettings$2;-><init>(Lcom/android/settings/personalpage/PersonalPageSettings;)V

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 487
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 489
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 490
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 305
    const-string v0, "PersonalPageSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 307
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageEnabler;->pause()V

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 312
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 432
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 436
    .local v0, "bAutoMode":Z
    if-ne v0, v4, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_auto_disable_when_screen_off"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updateAutoDisableCheckbox()V

    .line 444
    .end local v0    # "bAutoMode":Z
    :cond_0
    return v3

    .line 439
    .restart local v0    # "bAutoMode":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_auto_disable_when_screen_off"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->callLockType(I)V

    .line 427
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 287
    const-string v0, "PersonalPageSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 290
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updatePersonalPagepage()V

    .line 300
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageEnabler;->resume()V

    .line 301
    return-void
.end method

.method updateLockTypeSummary()V
    .locals 3

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_lock_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->LockType:I

    .line 376
    iget v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->LockType:I

    packed-switch v0, :pswitch_data_0

    .line 404
    :goto_0
    :pswitch_0
    return-void

    .line 378
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e11b8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 383
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e0262

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 386
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e027f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 389
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e0282

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 392
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e11e9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 395
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e028d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 398
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e028c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 401
    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e028e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method updatePersonalPagepage()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 328
    .local v0, "State":I
    if-eq v0, v3, :cond_2

    .line 329
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 330
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 336
    :goto_0
    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_4

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 339
    if-nez v0, :cond_3

    .line 340
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 348
    :goto_1
    const-string v1, "PersonalPageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePersonalPagepage State :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updateLockTypeSummary()V

    .line 350
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updateAutoDisableCheckbox()V

    .line 352
    iget-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->isSharedDevice:Z

    if-eqz v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 354
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setClickable(Z)V

    .line 355
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setFocusable(Z)V

    .line 356
    const-string v1, "PersonalPageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SharedDevice: disableButton "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->isSharedDevice:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_1
    return-void

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 333
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 342
    :cond_3
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_1

    .line 345
    :cond_4
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1
.end method
