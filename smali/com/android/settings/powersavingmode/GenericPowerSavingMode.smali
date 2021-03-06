.class public Lcom/android/settings/powersavingmode/GenericPowerSavingMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GenericPowerSavingMode.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field public entry:[Ljava/lang/String;

.field public entryValue:[Ljava/lang/CharSequence;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mDescriptionPreference:Landroid/preference/Preference;

.field private mIsCharger:Z

.field private mLowPowerModeObserver:Landroid/database/ContentObserver;

.field private mRestrictBackData:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$5;

    invoke-direct {v0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$5;-><init>()V

    sput-object v0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mIsCharger:Z

    .line 71
    new-instance v0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$1;-><init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    .line 249
    new-instance v0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$4;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$4;-><init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Lcom/android/settings/DropDownPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/GenericPowerSavingMode;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mIsCharger:Z

    return p1
.end method

.method private showDisableNpsmToast()V
    .locals 4

    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0aae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 323
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 324
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0x2a

    return v0
.end method

.method public initEntry()V
    .locals 7

    .prologue
    .line 151
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings/DropDownPreference;->clearItems()V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entryValue:[Ljava/lang/CharSequence;

    .line 153
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entryValue:[Ljava/lang/CharSequence;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    .line 154
    const/4 v1, 0x0

    .local v1, "start":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entryValue:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entryValue:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff05"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "summary":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-instance v4, Ljava/util/Locale;

    const-string v5, "ar"

    const-string v6, "AE"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    :cond_0
    if-nez v0, :cond_1

    .line 161
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    const v4, 0x7f0e1307

    invoke-virtual {p0, v4}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 165
    :goto_1
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    const v4, 0x7f0e1308

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1

    .line 167
    .end local v0    # "count":I
    .end local v2    # "summary":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    new-instance v4, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$3;

    invoke-direct {v4, p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$3;-><init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 181
    return-void
.end method

.method public initPreference()V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 118
    .local v0, "isEnableAutoPowerMode":Ljava/lang/Boolean;
    const-string v1, "turn_on_automatically"

    invoke-virtual {p0, v1}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    .line 119
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mDescriptionPreference:Landroid/preference/Preference;

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;-><init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;Landroid/content/Context;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mDescriptionPreference:Landroid/preference/Preference;

    .line 138
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mDescriptionPreference:Landroid/preference/Preference;

    const v2, 0x7f04016f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mDescriptionPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 141
    :cond_0
    new-instance v1, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mRestrictBackData:Landroid/preference/SwitchPreference;

    .line 142
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mRestrictBackData:Landroid/preference/SwitchPreference;

    const v2, 0x7f0e130a

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mRestrictBackData:Landroid/preference/SwitchPreference;

    const v2, 0x7f0e130b

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 144
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mRestrictBackData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mRestrictBackData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 148
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mCreated:Z

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mCreated:Z

    .line 105
    const-string v0, "GenericPowerSavingMode"

    const-string v1, "onActivityCreated() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 109
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->requestFocus()Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->addPreferencesFromResource(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->initPreference()V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->initEntry()V

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "GenericPowerSavingMode"

    const-string v1, "onDestroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 205
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "GenericPowerSavingMode"

    const-string v1, "onDestroyView() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 195
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 198
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 272
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 269
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->finish()V

    .line 270
    const/4 v0, 0x1

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 236
    const-string v1, "GenericPowerSavingMode"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_trigger_level"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 239
    .local v0, "Index":I
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 241
    .end local v0    # "Index":I
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 242
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 328
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mRestrictBackData:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_0

    .line 329
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 330
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "low_power_back_data_off"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    .end local v0    # "value":Z
    :cond_0
    return v2

    .line 330
    .restart local v0    # "value":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 209
    const-string v6, "GenericPowerSavingMode"

    const-string v7, "onResume() "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "low_power"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v2, v4

    .line 212
    .local v2, "checked":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "low_power_npsm"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v3, v4

    .line 213
    .local v3, "npsmchecked":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "low_power_back_data_off"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v1, v4

    .line 215
    .local v1, "backDataOff":Z
    :goto_2
    iget-object v6, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v6, :cond_0

    .line 216
    iget-object v7, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_5

    if-nez v3, :cond_5

    move v6, v4

    :goto_3
    invoke-virtual {v7, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 217
    iget-object v6, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 220
    :cond_0
    iget-object v7, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    if-eqz v2, :cond_6

    if-nez v3, :cond_6

    move v6, v4

    :goto_4
    invoke-virtual {v7, v6}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "low_power_trigger_level"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 222
    .local v0, "Index":I
    if-eqz v3, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "low_power_trigger_level_npsm"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 225
    :cond_1
    iget-object v6, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "low_power"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v4, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    iget-object v6, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v6, v4}, Lcom/android/settings/DropDownPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    iget-object v6, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mRestrictBackData:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 232
    iget-object v6, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mRestrictBackData:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_7

    if-nez v3, :cond_7

    :goto_5
    invoke-virtual {v6, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 233
    return-void

    .end local v0    # "Index":I
    .end local v1    # "backDataOff":Z
    .end local v2    # "checked":Z
    .end local v3    # "npsmchecked":Z
    :cond_2
    move v2, v5

    .line 211
    goto/16 :goto_0

    .restart local v2    # "checked":Z
    :cond_3
    move v3, v5

    .line 212
    goto :goto_1

    .restart local v3    # "npsmchecked":Z
    :cond_4
    move v1, v5

    .line 213
    goto :goto_2

    .restart local v1    # "backDataOff":Z
    :cond_5
    move v6, v5

    .line 216
    goto :goto_3

    :cond_6
    move v6, v5

    .line 220
    goto :goto_4

    .restart local v0    # "Index":I
    :cond_7
    move v4, v5

    .line 232
    goto :goto_5
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 186
    const-string v0, "GenericPowerSavingMode"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 188
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    const-string v4, "GenericPowerSavingMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSwitchChanged() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-eqz p2, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power_npsm"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_3

    move v1, v3

    .line 281
    .local v1, "npsmchecked":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->showDisableNpsmToast()V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sm_connectivity_disable"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power_npsm"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power_trigger_level_npsm"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    .end local v1    # "npsmchecked":Z
    :cond_0
    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v4, p2}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 290
    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mRestrictBackData:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power"

    if-eqz p2, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    iget-boolean v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mIsCharger:Z

    if-eqz v2, :cond_2

    .line 294
    if-eqz p2, :cond_4

    .line 295
    const v2, 0x7f0e12ef

    invoke-virtual {p0, v2}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "msg":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 302
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 280
    goto :goto_0

    .line 297
    :cond_4
    const v2, 0x7f0e12f0

    invoke-virtual {p0, v2}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_1
.end method
