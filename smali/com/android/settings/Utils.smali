.class public final Lcom/android/settings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Utils$LengthFilter;,
        Lcom/android/settings/Utils$IndexAscCompare;
    }
.end annotation


# static fields
.field public static AUTO_AIR_VIEW_MODE:I

.field public static final BADNESS_COLORS:[I

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field public static final CONFIG_LOCAL_SECURITY_POLICY:Ljava/lang/String;

.field public static final CONFIG_OP_BRANDING:Ljava/lang/String;

.field public static final CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

.field public static final CONFIG_WIFI_AUTOCONNECT:Ljava/lang/String;

.field public static final CONFIG_WIFI_NOTIFICATION_STYLE:Ljava/lang/String;

.field public static final DBG:Z

.field public static final DEFAULT_TIMEOUT_MOBILEAP:I

.field public static final DISABLE_AUTO_RECONNECT:Z

.field public static final DISPLAY_SSID_STATUS_BAR_INFO:Z

.field private static DONT_CLICK_MENUS:[Ljava/lang/String;

.field public static final EAPMETHOD_SETTING:Ljava/lang/String;

.field public static final ENABLE_DETAIL_EAP_ERROR_CODES_AND_STATE:Z

.field public static final ENABLE_DISC_BUTTON_APNLIST:Z

.field public static final ENABLE_MENU_AUTOJOIN:Z

.field public static final ENABLE_MENU_IWLAN4:Ljava/lang/String;

.field public static final ENABLE_MENU_RESET_CONFIGURATION:Z

.field public static final ENABLE_SHOW_PASSWORD_AS_DEFAULT:Z

.field public static final ENABLE_SIM_SELECTION_UI:Z

.field public static final ENABLE_WIFI_CONNECTION_TYPE:Z

.field public static FINGER_AIR_VIEW_MODE:I

.field private static FMM_MENUES:[Ljava/lang/String;

.field public static final HIDE_EXCLUDED_AP_LIST:Z

.field public static final LRA_CARRIERS:[Ljava/lang/String;

.field public static MASTER_AIR_VIEW_OFF:I

.field public static MASTER_AIR_VIEW_ON:I

.field public static final MAX_CLIENT_4_MOBILEAP:I

.field private static final MCC_MNC_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MHSDBG:Z

.field public static PEN_AIR_VIEW_MODE:I

.field public static final PREFERRED_BAND:Ljava/lang/String;

.field public static final REMOVABLE_DEFAULT_AP:Z

.field public static final SHOW_DETAILED_AP_INFO:Z

.field private static final SIGNATURES:[Landroid/content/pm/Signature;

.field public static final SPRINT_EXTENSIONS:Z

.field public static final SUPPORTMOBILEAPONTRIGGER:Z

.field public static final SUPPORTMOBILEAPWPSPBC:Z

.field public static final SUPPORTMOBILEAPWPSPIN:Z

.field public static final SUPPORT_ADVANCED_MENU:Z

.field public static final SUPPORT_MOBILEAP_5G:Z

.field public static final SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

.field public static final SUPPORT_NOTIFICATION_MENU:Z

.field public static final SUPPORT_WAPI:Z

.field public static focusedFavoriteId:J

.field public static focusedTileId:J

.field private static isChecked_VolteCallOnCommonIms:Z

.field private static isChecked_VzwVoLTEEnabled:Z

.field public static final isEnabledSurveyMode:Z

.field private static final isMultiSim:Z

.field private static isVolteCallOnCommonIms:Z

.field public static mConfigNetworkTypeCapability:Ljava/lang/String;

.field public static mDeviceType:Ljava/lang/String;

.field private static mExistCoverNotePackage:Ljava/lang/Boolean;

.field private static mFeatureChecked:Z

.field private static mFeatureEnabled:Z

.field private static mRoamingState:Z

.field public static mSalesCode:Ljava/lang/String;

.field private static sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsVzwVoLTEEnabled:Z

.field private static sPermissionControllerPackageName:Ljava/lang/String;

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    .line 307
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/Utils;->BADNESS_COLORS:[I

    .line 316
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "330120"

    aput-object v3, v0, v2

    const-string v3, "311480"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/settings/Utils;->LRA_CARRIERS:[Ljava/lang/String;

    .line 347
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/Utils;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    .line 352
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->SPRINT_EXTENSIONS:Z

    .line 355
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 357
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_ConfigVendorSsidList"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    .line 359
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->CONFIG_WIFI_NOTIFICATION_STYLE:Ljava/lang/String;

    .line 361
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->CONFIG_LOCAL_SECURITY_POLICY:Ljava/lang/String;

    .line 363
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_EnableMenuConnectionType"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    .line 365
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_SupportSimSelectionForEapSimAka"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_SIM_SELECTION_UI:Z

    .line 367
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_EnableDiscButtonApnList"

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    .line 369
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_DETAIL_EAP_ERROR_CODES_AND_STATE:Z

    .line 371
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_DisableAutoReconnect"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->DISABLE_AUTO_RECONNECT:Z

    .line 373
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_EnableMenuAutoJoin"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_MENU_AUTOJOIN:Z

    .line 375
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_EnableMenuResetConfiguration"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_MENU_RESET_CONFIGURATION:Z

    .line 377
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_EnableMenuIWLAN4"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->ENABLE_MENU_IWLAN4:Ljava/lang/String;

    .line 379
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_SupportAdvancedMenu"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->SUPPORT_ADVANCED_MENU:Z

    .line 381
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_SupportNotificationMenu"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->SUPPORT_NOTIFICATION_MENU:Z

    .line 383
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->EAPMETHOD_SETTING:Ljava/lang/String;

    .line 385
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_HideExcludedApList"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->HIDE_EXCLUDED_AP_LIST:Z

    .line 387
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_PreferredBand"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->PREFERRED_BAND:Ljava/lang/String;

    .line 389
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_RemovableDefaultAP"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->REMOVABLE_DEFAULT_AP:Z

    .line 391
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_DisplaySsidStatusBarInfo"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    .line 393
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_ShowDetailedApInfo"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    .line 395
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_ConfigAutoConnectHotspot"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->CONFIG_WIFI_AUTOCONNECT:Ljava/lang/String;

    .line 398
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mDefaultShowPassword:Z

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_SHOW_PASSWORD_AS_DEFAULT:Z

    .line 399
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupport5G:Z

    sput-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    .line 400
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultMaxClientNum:I

    sput v0, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    .line 401
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mModemPowerBackOff:Z

    sput-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPONTRIGGER:Z

    .line 402
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 403
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPBC:Z

    sput-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    .line 404
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPIN:Z

    sput-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    .line 405
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultTimeOut:I

    sput v0, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    .line 406
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportMaxClientMenu:Z

    sput-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    .line 407
    const-string v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    .line 409
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_SupportWapi"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    .line 427
    sput-boolean v2, Lcom/android/settings/Utils;->mFeatureChecked:Z

    .line 428
    sput-boolean v2, Lcom/android/settings/Utils;->mFeatureEnabled:Z

    .line 430
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    if-le v0, v1, :cond_3

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/settings/Utils;->isMultiSim:Z

    .line 436
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 3831
    sput v2, Lcom/android/settings/Utils;->PEN_AIR_VIEW_MODE:I

    .line 3832
    sput v1, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    .line 3833
    sput v5, Lcom/android/settings/Utils;->AUTO_AIR_VIEW_MODE:I

    .line 3834
    sput v4, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    .line 3835
    sput v6, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    .line 3968
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    .line 4265
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    .line 4600
    sput-boolean v2, Lcom/android/settings/Utils;->isVolteCallOnCommonIms:Z

    .line 4601
    sput-boolean v2, Lcom/android/settings/Utils;->isChecked_VolteCallOnCommonIms:Z

    .line 4620
    sput-boolean v2, Lcom/android/settings/Utils;->sIsVzwVoLTEEnabled:Z

    .line 4621
    sput-boolean v2, Lcom/android/settings/Utils;->isChecked_VzwVoLTEEnabled:Z

    .line 4633
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/Utils;->MCC_MNC_LIST:Ljava/util/HashSet;

    .line 4635
    sget-object v0, Lcom/android/settings/Utils;->MCC_MNC_LIST:Ljava/util/HashSet;

    const-string v3, "310004"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4636
    sget-object v0, Lcom/android/settings/Utils;->MCC_MNC_LIST:Ljava/util/HashSet;

    const-string v3, "310005"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4637
    sget-object v0, Lcom/android/settings/Utils;->MCC_MNC_LIST:Ljava/util/HashSet;

    const-string v3, "310006"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4638
    sget-object v0, Lcom/android/settings/Utils;->MCC_MNC_LIST:Ljava/util/HashSet;

    const-string v3, "310012"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4639
    sget-object v0, Lcom/android/settings/Utils;->MCC_MNC_LIST:Ljava/util/HashSet;

    const-string v3, "311012"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4640
    sget-object v0, Lcom/android/settings/Utils;->MCC_MNC_LIST:Ljava/util/HashSet;

    const-string v3, "311480"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4641
    sget-object v0, Lcom/android/settings/Utils;->MCC_MNC_LIST:Ljava/util/HashSet;

    const-string v3, "20404"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4642
    sget-object v0, Lcom/android/settings/Utils;->MCC_MNC_LIST:Ljava/util/HashSet;

    const-string v3, "2044"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6349
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "go_to_samsungdive"

    aput-object v3, v0, v2

    const-string v3, "samsung_account"

    aput-object v3, v0, v1

    const-string v3, "remote_controls"

    aput-object v3, v0, v5

    const-string v3, "google_location_service"

    aput-object v3, v0, v4

    const-string v3, "send_final_location_info"

    aput-object v3, v0, v6

    const/4 v3, 0x5

    const-string v4, "sim_change_alert"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "reactivation_lock"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/settings/Utils;->FMM_MENUES:[Ljava/lang/String;

    .line 6359
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "unlock_set_none"

    aput-object v3, v0, v2

    const-string v3, "unlock_set_off"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/settings/Utils;->DONT_CLICK_MENUS:[Ljava/lang/String;

    .line 7769
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/android/settings/Utils;->focusedTileId:J

    .line 7770
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/android/settings/Utils;->focusedFavoriteId:J

    .line 7825
    new-array v0, v1, [Landroid/content/pm/Signature;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v3, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    invoke-direct {v1, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/Utils;->SIGNATURES:[Landroid/content/pm/Signature;

    return-void

    :cond_1
    move v0, v2

    .line 280
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 407
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 430
    goto/16 :goto_2

    .line 307
    :array_0
    .array-data 4
        0x0
        -0x3bc7d8
        -0x1ab6e8
        -0xb8500
        -0x540d4
        -0x9861c9
        -0xf580be
    .end array-data
.end method

.method public static ConnectedMobileKeypad(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 7423
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7424
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v2, v1, :cond_0

    .line 7427
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static SetAirViewMasterValue(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "val"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3838
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3840
    .local v1, "cr":Landroid/content/ContentResolver;
    packed-switch p1, :pswitch_data_0

    .line 3868
    :cond_0
    :goto_0
    return-void

    .line 3842
    :pswitch_0
    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3843
    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3846
    :pswitch_1
    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3847
    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3850
    :pswitch_2
    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3851
    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3854
    :pswitch_3
    const-string v2, "air_view_master_onoff"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3856
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3857
    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3858
    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3863
    :pswitch_4
    const-string v2, "air_view_master_onoff"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3864
    const-string v2, "air_view_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3865
    .local v0, "airViewIndex":I
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    goto :goto_0

    .line 3840
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static allowAddOrRestore(Landroid/content/Context;)Z
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7313
    const/4 v0, 0x1

    .line 7314
    .local v0, "allowAddOrRestore":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "apn_locked"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "apn_lock_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 7316
    :cond_0
    const/4 v0, 0x0

    .line 7318
    :cond_1
    return v0
.end method

.method public static appendWhereString(Landroid/content/Context;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "tIntent"    # Landroid/content/Intent;
    .param p2, "mSimSlot"    # I

    .prologue
    const/16 v11, 0x9

    .line 6808
    const-string v5, ""

    .line 6809
    .local v5, "ret":Ljava/lang/String;
    invoke-static {p2}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    .line 6810
    .local v4, "numeric":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isSuportSPcode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6811
    const-string v7, ""

    .line 6813
    .local v7, "simSpcode":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/Utils;->getSpcode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 6814
    .local v0, "decSpcode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 6815
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 6816
    .local v3, "num":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 6817
    const-string v8, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fillList get spcode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 6818
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6819
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " and mvno_type=\"gid\" and mvno_match_data=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6825
    .end local v0    # "decSpcode":Ljava/lang/String;
    .end local v3    # "num":I
    .end local v7    # "simSpcode":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 6826
    const/4 v8, 0x1

    if-ne p2, v8, :cond_a

    .line 6827
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and current1 = 1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6833
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {p1}, Lcom/android/settings/Utils;->isSprEditable(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 6834
    const-string v5, " and type like \'%default%\'"

    .line 6837
    :cond_2
    const-string v8, "52505"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 6838
    invoke-static {p2}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 6839
    .local v6, "simIMSI":Ljava/lang/String;
    invoke-static {p2}, Lcom/samsung/android/telephony/MultiSimManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v1

    .line 6840
    .local v1, "gidNum":Ljava/lang/String;
    const-string v2, ""

    .line 6841
    .local v2, "mIMSI":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v1, "0"

    .line 6843
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v11, :cond_5

    :cond_4
    const-string v8, "0a"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 6844
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6845
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 6846
    const-string v8, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fillList get simIMSI : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mIMSI :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 6848
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 6849
    const-string v8, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fillList get gidNum : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 6851
    :cond_7
    const-string v8, "0a"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 6852
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and mvno_type=\"gid\" and mvno_match_data=\"0A\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6863
    .end local v1    # "gidNum":Ljava/lang/String;
    .end local v2    # "mIMSI":Ljava/lang/String;
    .end local v6    # "simIMSI":Ljava/lang/String;
    :cond_8
    :goto_2
    return-object v5

    .line 6821
    .restart local v0    # "decSpcode":Ljava/lang/String;
    .restart local v7    # "simSpcode":Ljava/lang/String;
    :cond_9
    const-string v5, " and mvno_type=\"\" and mvno_match_data=\"\""

    goto/16 :goto_0

    .line 6829
    .end local v0    # "decSpcode":Ljava/lang/String;
    .end local v7    # "simSpcode":Ljava/lang/String;
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and current = 1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 6853
    .restart local v1    # "gidNum":Ljava/lang/String;
    .restart local v2    # "mIMSI":Ljava/lang/String;
    .restart local v6    # "simIMSI":Ljava/lang/String;
    :cond_b
    const-string v8, "525053095x"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "525053096x"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 6854
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and (mvno_type=\"imsi\" and mvno_match_data=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 6856
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and (mvno_type=\"\" or mvno_type is null) and (mvno_match_data=\"\" or mvno_match_data is null)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 6859
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and (mvno_type=\"\" or mvno_type is null) and (mvno_match_data=\"\" or mvno_match_data is null)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public static applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 6464
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 6465
    .local v1, "orientation":I
    const-string v2, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6466
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 6467
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6468
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6469
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 6470
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 6471
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6479
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 6473
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6474
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6475
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 6476
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public static autoTurnOffAirMotionEngine(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1035
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1037
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->isAllAirMotionDisabled(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    const-string v2, "air_motion_engine"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1039
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v1, "motion_changed":Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1041
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1043
    .end local v1    # "motion_changed":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static buildGlobalChangeWarningDialogwithNegativeAction(Landroid/content/Context;ILjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "positiveAction"    # Ljava/lang/Runnable;
    .param p3, "negativeAction"    # Ljava/lang/Runnable;

    .prologue
    .line 2346
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2347
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2348
    const v1, 0x7f0e0d4c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2349
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/Utils$2;

    invoke-direct {v2, p2}, Lcom/android/settings/Utils$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2355
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/Utils$3;

    invoke-direct {v2, p3}, Lcom/android/settings/Utils$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2362
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static checkContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "cp"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 7480
    const/4 v1, 0x0

    .line 7481
    .local v1, "value":Z
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 7482
    .local v0, "a":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_0

    .line 7483
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 7484
    const/4 v1, 0x1

    .line 7488
    :goto_0
    return v1

    .line 7486
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkReactiveService(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 4842
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 4843
    .local v0, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkReactiveService : rsm.getServiceSupport() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4844
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4866
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 4844
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkSupportVolteSettings(Landroid/content/Context;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4604
    sget-boolean v0, Lcom/android/settings/Utils;->isChecked_VolteCallOnCommonIms:Z

    if-eqz v0, :cond_0

    .line 4612
    :goto_0
    return-void

    .line 4606
    :cond_0
    const-string v0, "0.0"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_FrameworkVersion"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4608
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->isVolteCallOnCommonIms:Z

    .line 4610
    :cond_1
    const-string v0, "Settings_Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSupportVolteSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/Utils;->isVolteCallOnCommonIms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/Utils;->isChecked_VolteCallOnCommonIms:Z

    goto :goto_0
.end method

.method public static checkVzwVoLTEFeatureEnabled(Landroid/content/Context;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4624
    sget-boolean v0, Lcom/android/settings/Utils;->isChecked_VzwVoLTEEnabled:Z

    if-eqz v0, :cond_0

    .line 4631
    :goto_0
    return-void

    .line 4626
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportHuxAdvancedCalling"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4627
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->sIsVzwVoLTEEnabled:Z

    .line 4629
    :cond_1
    const-string v0, "Settings_Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkVzwVoLTEFeatureEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/Utils;->sIsVzwVoLTEEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4630
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/Utils;->isChecked_VzwVoLTEEnabled:Z

    goto :goto_0
.end method

.method public static checkWifiPreCondition(Landroid/content/Context;Z)V
    .locals 12
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4540
    const-string v5, "Settings_Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkWifiPreCondition enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4541
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 4542
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    .line 4544
    .local v4, "wifiState":I
    if-eqz p1, :cond_3

    if-eq v4, v10, :cond_0

    if-eq v4, v11, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4547
    :cond_0
    if-eq v4, v10, :cond_1

    if-ne v4, v11, :cond_2

    .line 4549
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pre_wifi_state_for_usb_tether"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4552
    :cond_2
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 4555
    const-wide/16 v6, 0x258

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4561
    :cond_3
    :goto_0
    if-nez p1, :cond_4

    .line 4562
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pre_wifi_state_for_usb_tether"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 4563
    .local v3, "wifiSavedState":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usb_tethering_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 4565
    .local v2, "usbTetherSaveState":I
    const-string v5, "Settings_Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifiSavedState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", usbTetherSaveState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4567
    if-ne v3, v9, :cond_4

    if-nez v2, :cond_4

    .line 4568
    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 4569
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pre_wifi_state_for_usb_tether"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4572
    .end local v2    # "usbTetherSaveState":I
    .end local v3    # "wifiSavedState":I
    :cond_4
    return-void

    .line 4556
    :catch_0
    move-exception v0

    .line 4557
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v5, 0x1

    .line 2210
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 2212
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    .line 2216
    .local v0, "avatarDataStream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 2217
    const/4 v5, 0x0

    .line 2226
    :goto_0
    return v5

    .line 2219
    :cond_0
    if-eqz p1, :cond_1

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 2220
    .local v4, "userId":I
    :goto_1
    const-string v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 2221
    .local v3, "um":Landroid/os/UserManager;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2222
    .local v2, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 2224
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2225
    :catch_0
    move-exception v6

    goto :goto_0

    .line 2219
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userId":I
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    goto :goto_1
.end method

.method public static createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p0, "displayText"    # Ljava/lang/CharSequence;
    .param p1, "accessibileText"    # Ljava/lang/String;

    .prologue
    .line 3090
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3091
    .local v0, "str":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v1, p1}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3094
    return-object v0
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .param p0, "localeStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2039
    if-nez p0, :cond_0

    .line 2040
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 2048
    :goto_0
    return-object v1

    .line 2041
    :cond_0
    const-string v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2043
    .local v0, "brokenDownLocale":[Ljava/lang/String;
    array-length v1, v0

    if-ne v4, v1, :cond_1

    .line 2044
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2045
    :cond_1
    array-length v1, v0

    if-ne v5, v1, :cond_2

    .line 2046
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2048
    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings/UserAdapter;
    .locals 5
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserManager;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Lcom/android/settings/UserAdapter;"
        }
    .end annotation

    .prologue
    .line 2610
    .local p2, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2611
    .local v2, "userDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/UserAdapter$UserDetails;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2612
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2613
    new-instance v4, Lcom/android/settings/UserAdapter$UserDetails;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-direct {v4, v3, p0, p1}, Lcom/android/settings/UserAdapter$UserDetails;-><init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2612
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2615
    :cond_0
    new-instance v3, Lcom/android/settings/UserAdapter;

    invoke-direct {v3, p1, v2}, Lcom/android/settings/UserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-object v3
.end method

.method public static createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/UserAdapter;
    .locals 6
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x64

    .line 2582
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 2584
    .local v2, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-lt v3, v5, :cond_0

    move-object v3, v4

    .line 2605
    :goto_0
    return-object v3

    .line 2588
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2589
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    if-lt v3, v5, :cond_1

    .line 2590
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2591
    add-int/lit8 v0, v0, -0x1

    .line 2588
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2596
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_3

    move-object v3, v4

    .line 2597
    goto :goto_0

    .line 2600
    :cond_3
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 2602
    .local v1, "myUserHandle":Landroid/os/UserHandle;
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2603
    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2605
    invoke-static {p0, p1, v2}, Lcom/android/settings/Utils;->createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings/UserAdapter;

    move-result-object v3

    goto :goto_0
.end method

.method private static deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 7725
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 7726
    .local v1, "sbf":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 7727
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 7728
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 7726
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7731
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "toDisable"    # Landroid/content/ComponentName;

    .prologue
    .line 7918
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 7919
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7923
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 7920
    :catch_0
    move-exception v0

    .line 7921
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Settings_Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component not found, not disabling it: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static disableNfcComponent(Landroid/content/Context;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 7908
    const-string v0, "Settings_Utils"

    const-string v1, "Removing nfc components from Manifest file"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 7909
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$NfcSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 7910
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$PaymentSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 7911
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$AndroidBeamSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 7912
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.nfc.NfcAdvancedRoutingSetting"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 7913
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.nfc.PaymentDefaultDialog"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 7914
    return-void
.end method

.method public static forceCustomPadding(Landroid/view/View;Z)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "additive"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2167
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2168
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0c015f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2170
    .local v2, "paddingSide":I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    :goto_0
    add-int v3, v2, v5

    .line 2171
    .local v3, "paddingStart":I
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    :goto_1
    add-int v1, v2, v5

    .line 2172
    .local v1, "paddingEnd":I
    const v5, 0x105002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2175
    .local v0, "paddingBottom":I
    invoke-virtual {p0, v3, v6, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 2176
    return-void

    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingEnd":I
    .end local v3    # "paddingStart":I
    :cond_0
    move v5, v6

    .line 2170
    goto :goto_0

    .restart local v3    # "paddingStart":I
    :cond_1
    move v5, v6

    .line 2171
    goto :goto_1
.end method

.method public static forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/widget/ListView;
    .param p3, "ignoreSidePadding"    # Z

    .prologue
    .line 2136
    const/high16 v0, 0x2000000

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 2137
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 2138
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 2139
    return-void
.end method

.method public static formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # D
    .param p3, "withSeconds"    # Z

    .prologue
    const v5, 0x15180

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2832
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 2833
    .local v4, "seconds":I
    if-nez p3, :cond_0

    .line 2835
    add-int/lit8 v4, v4, 0x1e

    .line 2838
    :cond_0
    const/4 v0, 0x0

    .local v0, "days":I
    const/4 v1, 0x0

    .local v1, "hours":I
    const/4 v2, 0x0

    .line 2839
    .local v2, "minutes":I
    if-lt v4, v5, :cond_1

    .line 2840
    div-int v0, v4, v5

    .line 2841
    mul-int/2addr v5, v0

    sub-int/2addr v4, v5

    .line 2843
    :cond_1
    const/16 v5, 0xe10

    if-lt v4, v5, :cond_2

    .line 2844
    div-int/lit16 v1, v4, 0xe10

    .line 2845
    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v4, v5

    .line 2847
    :cond_2
    const/16 v5, 0x3c

    if-lt v4, v5, :cond_3

    .line 2848
    div-int/lit8 v2, v4, 0x3c

    .line 2849
    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    .line 2851
    :cond_3
    if-eqz p3, :cond_7

    .line 2852
    if-lez v0, :cond_4

    .line 2853
    const v5, 0x7f0e08fa

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2874
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2855
    :cond_4
    if-lez v1, :cond_5

    .line 2856
    const v5, 0x7f0e08fb

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2858
    :cond_5
    if-lez v2, :cond_6

    .line 2859
    const v5, 0x7f0e08fc

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2861
    :cond_6
    const v5, 0x7f0e08fd

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2864
    :cond_7
    if-lez v0, :cond_8

    .line 2865
    const v5, 0x7f0e08fe

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2867
    :cond_8
    if-lez v1, :cond_9

    .line 2868
    const v5, 0x7f0e08ff

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2871
    :cond_9
    const v5, 0x7f0e0900

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v0, 0x0

    .line 2019
    if-nez p0, :cond_1

    .line 2029
    :cond_0
    return-object v0

    .line 2020
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2022
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2024
    const-string v0, ""

    .line 2025
    .local v0, "addresses":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2027
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatPercentage(D)Ljava/lang/String;
    .locals 2
    .param p0, "percentage"    # D

    .prologue
    .line 2064
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPercentage(I)Ljava/lang/String;
    .locals 4
    .param p0, "percentage"    # I

    .prologue
    .line 2059
    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPercentage(JJ)Ljava/lang/String;
    .locals 4
    .param p0, "amount"    # J
    .param p2, "total"    # J

    .prologue
    .line 2054
    long-to-double v0, p0

    long-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profileId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3054
    const-string v6, "device_policy"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3056
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v4

    .line 3057
    .local v4, "mdmPackage":Landroid/content/ComponentName;
    if-nez v4, :cond_0

    .line 3069
    :goto_0
    return-object v3

    .line 3060
    :cond_0
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3062
    .local v5, "mdmPackageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 3063
    .local v2, "ipm":Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3065
    .local v3, "mdmApplicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 3066
    .end local v2    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v3    # "mdmApplicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 3067
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "Settings_Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while retrieving application info for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", userId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getApnCursor(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "mSimSlot"    # I
    .param p3, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 6867
    const/4 v6, 0x0

    .line 6868
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {p2}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v7

    .line 6870
    .local v7, "numeric":Ljava/lang/String;
    const-string v5, "name ASC"

    .line 6871
    .local v5, "order":Ljava/lang/String;
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VAU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VHA"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TGY"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "45403"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "45503"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "45505"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6875
    :cond_0
    const-string v5, "_id asc"

    .line 6877
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "mvno_type"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "mvno_match_data"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "user"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "edited"

    aput-object v4, v2, v3

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6880
    return-object v6
.end method

.method public static getAppDataRestrictionType()I
    .locals 3

    .prologue
    .line 3769
    const/4 v0, 0x0

    .line 3781
    .local v0, "result":I
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_BACKGROUND_DATA_SETTING"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3782
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 3786
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3787
    const/4 v0, 0x0

    .line 3790
    :cond_1
    return v0

    .line 3783
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAutoCompleteColor(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 6442
    const/4 v3, 0x1

    new-array v1, v3, [I

    const v3, 0x1010434

    aput v3, v1, v4

    .line 6443
    .local v1, "color":[I
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 6444
    .local v0, "a":Landroid/content/res/TypedArray;
    const v3, 0xff00ff

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 6445
    .local v2, "retColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 6446
    return v2
.end method

.method public static getBatteryLevel(Landroid/content/Intent;)I
    .locals 4
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 2093
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2094
    .local v0, "level":I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2095
    .local v1, "scale":I
    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    return v2
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 2072
    invoke-static {p0}, Lcom/android/settings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2099
    move-object v0, p1

    .line 2101
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "plugged"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2102
    .local v2, "plugType":I
    const-string v6, "status"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2104
    .local v4, "status":I
    const-string v6, "hv_charger"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2106
    .local v1, "isHvcharger":Z
    if-eqz v1, :cond_1

    const-string v6, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2107
    const v6, 0x7f0e0104

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2131
    .local v5, "statusString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 2108
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_1
    if-ne v4, v9, :cond_4

    .line 2109
    const v6, 0x7f0e0100

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2110
    .restart local v5    # "statusString":Ljava/lang/String;
    if-lez v2, :cond_0

    .line 2112
    if-ne v2, v8, :cond_2

    .line 2113
    const v3, 0x7f0e0107

    .line 2119
    .local v3, "resId":I
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2120
    goto :goto_0

    .line 2114
    .end local v3    # "resId":I
    :cond_2
    if-ne v2, v9, :cond_3

    .line 2115
    const v3, 0x7f0e0108

    .restart local v3    # "resId":I
    goto :goto_1

    .line 2117
    .end local v3    # "resId":I
    :cond_3
    const v3, 0x7f0e0109

    .restart local v3    # "resId":I
    goto :goto_1

    .line 2121
    .end local v3    # "resId":I
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    .line 2122
    const v6, 0x7f0e0101

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 2123
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    .line 2124
    const v6, 0x7f0e0102

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 2125
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x5

    if-ne v4, v6, :cond_7

    .line 2126
    const v6, 0x7f0e0103

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 2128
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_7
    const v6, 0x7f0e00ff

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fragmentName"    # Ljava/lang/String;
    .param p1, "intentTargetPackage"    # Ljava/lang/String;
    .param p2, "intentTargetClass"    # Ljava/lang/String;

    .prologue
    .line 4948
    if-eqz p0, :cond_0

    .line 4955
    .end local p0    # "fragmentName":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 4950
    .restart local p0    # "fragmentName":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "com.android.settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object p0, p1

    .line 4951
    goto :goto_0

    .line 4952
    :cond_1
    if-eqz p2, :cond_2

    move-object p0, p2

    .line 4953
    goto :goto_0

    .line 4955
    :cond_2
    const-string p0, ""

    goto :goto_0
.end method

.method public static getDaemonVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 7493
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    const-string v8, "2016"

    .line 7494
    .local v8, "version":Ljava/lang/String;
    :goto_0
    if-nez p0, :cond_1

    .line 7495
    const-string v2, "Settings_Utils"

    const-string v3, "null context. assuming daemon version using SDK version"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    .line 7537
    :goto_1
    return-object v2

    .line 7493
    .end local v8    # "version":Ljava/lang/String;
    :cond_0
    const-string v8, "2015"

    goto :goto_0

    .line 7499
    .restart local v8    # "version":Ljava/lang/String;
    :cond_1
    const-string v2, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7500
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7502
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_4

    .line 7503
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->checkContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7504
    const-string v2, "Settings_Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unavailable Uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7505
    const-string v2, "NA"

    goto :goto_1

    .line 7508
    :cond_2
    const/4 v6, 0x0

    .line 7510
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "DAEMON_DIVISION_CHECK"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7513
    if-eqz v6, :cond_5

    .line 7514
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 7516
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 7529
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 7530
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7535
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_3
    const-string v2, "Settings_Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Daemon version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    .line 7537
    goto :goto_1

    .line 7517
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 7518
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "NA"

    .line 7519
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 7525
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 7526
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "NA"

    .line 7527
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7529
    if-eqz v6, :cond_4

    .line 7530
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 7523
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_4
    const-string v8, "NA"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 7529
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_6

    .line 7530
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method private static getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "resId"    # I

    .prologue
    .line 5254
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5255
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 5257
    .local v2, "tv":Landroid/util/TypedValue;
    const/4 v0, 0x0

    .line 5258
    .local v0, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 5259
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 5260
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_1

    .line 5261
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5269
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5270
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 5263
    :cond_1
    iget-object v0, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 5265
    :cond_2
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 5270
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 5226
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/Utils;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultActivityIconForTray(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 7869
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 7870
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7871
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public static getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 2008
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2010
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 2011
    .local v2, "prop":Landroid/net/LinkProperties;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2012
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2013
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 2015
    :cond_0
    invoke-static {v2}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getDefaultUserIconAsBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "userId"    # I

    .prologue
    .line 2922
    const/4 v0, 0x0

    .line 2924
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/android/settings/Utils;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 2925
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 2926
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2928
    sget-object v1, Lcom/android/settings/Utils;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2930
    :cond_0
    return-object v0
.end method

.method public static getEffectiveUserId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3098
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 3100
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 3101
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 3107
    :goto_0
    return v1

    .line 3103
    :cond_0
    if-eqz v0, :cond_1

    .line 3104
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    goto :goto_0

    .line 3106
    :cond_1
    const-string v1, "Settings_Utils"

    const-string v2, "Unable to acquire UserManager"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    goto :goto_0
.end method

.method public static getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1118
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    const v1, 0x7f0e0a0f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1123
    :goto_0
    return-object v1

    .line 1120
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1121
    const v1, 0x7f0e0a0e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1123
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 6027
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6028
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6029
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 6031
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6032
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 6033
    const/4 v0, 0x1

    .line 6039
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6042
    :goto_0
    return v0

    .line 6035
    :cond_0
    const/4 v0, 0x0

    .line 6039
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 6037
    :catch_0
    move-exception v0

    .line 6039
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6042
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 6039
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 6046
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6047
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6048
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 6050
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6051
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 6052
    const/4 v0, 0x1

    .line 6058
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6061
    :goto_0
    return v0

    .line 6054
    :cond_0
    const/4 v0, 0x0

    .line 6058
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 6056
    :catch_0
    move-exception v0

    .line 6058
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6061
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 6058
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 6065
    const/4 v7, 0x0

    .line 6066
    .local v7, "result":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6067
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6068
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 6070
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6071
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 6074
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6077
    :cond_0
    :goto_0
    return v7

    .line 6072
    :catch_0
    move-exception v0

    .line 6074
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 6091
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6092
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6093
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 6095
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6096
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6099
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6103
    :cond_0
    :goto_0
    return-object v2

    .line 6097
    :catch_0
    move-exception v0

    .line 6099
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;
    .locals 5
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "checkUser"    # Landroid/os/UserHandle;

    .prologue
    .line 2884
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 2885
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2886
    .local v0, "checkUserId":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2887
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v0, :cond_0

    .line 2891
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getFavoriteTileBackgroundId(II)I
    .locals 1
    .param p0, "categoryId"    # I
    .param p1, "tileId"    # I

    .prologue
    .line 5603
    const v0, 0x7f020155

    .line 5604
    .local v0, "backgroundId":I
    sparse-switch p0, :sswitch_data_0

    .line 5624
    :goto_0
    return v0

    .line 5606
    :sswitch_0
    const v0, 0x7f020157

    .line 5607
    goto :goto_0

    .line 5609
    :sswitch_1
    const v0, 0x7f02015d

    .line 5610
    goto :goto_0

    .line 5612
    :sswitch_2
    const v0, 0x7f02015f

    .line 5613
    goto :goto_0

    .line 5615
    :sswitch_3
    const v0, 0x7f02015b

    .line 5616
    goto :goto_0

    .line 5618
    :sswitch_4
    const v0, 0x7f020159

    .line 5619
    goto :goto_0

    .line 5604
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d064a -> :sswitch_0
        0x7f0d0661 -> :sswitch_4
        0x7f0d0666 -> :sswitch_1
        0x7f0d067b -> :sswitch_2
        0x7f0d0691 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 2807
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2808
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2810
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFontIndex(Landroid/content/Context;F)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scale"    # F

    .prologue
    .line 3879
    invoke-static {p0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3880
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3884
    .local v2, "indices":[Ljava/lang/String;
    :goto_0
    const/4 v1, -0x1

    .line 3885
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 3886
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, p1

    if-nez v3, :cond_2

    .line 3887
    move v1, v0

    .line 3891
    :cond_0
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "returning  font index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3892
    return v1

    .line 3882
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "indices":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "indices":[Ljava/lang/String;
    goto :goto_0

    .line 3885
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getFontName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "fontName"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0e112a

    const v3, 0x7f0e1125

    const v2, 0x7f0e1124

    const v1, 0x7f0e1123

    .line 7659
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 7660
    :cond_0
    const-string v0, ""

    .line 7721
    :goto_0
    return-object v0

    .line 7663
    :cond_1
    const-string v0, "Rosemary"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7664
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    :goto_1
    move-object v0, p1

    .line 7721
    goto :goto_0

    .line 7666
    :cond_2
    const-string v0, "Choco cooky"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7667
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto :goto_1

    .line 7669
    :cond_3
    const-string v0, "Cool jazz"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7670
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto :goto_1

    .line 7672
    :cond_4
    const-string v0, "HelveticaNeueRegular"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7673
    const-string p1, "Helvetica S"

    goto :goto_1

    .line 7675
    :cond_5
    const-string v0, "Samsung sans"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7676
    const-string p1, "Samsung Sans"

    goto :goto_1

    .line 7678
    :cond_6
    const-string v0, "Apple mint"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7679
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e1126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto :goto_1

    .line 7681
    :cond_7
    const-string v0, "Tinker bell"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7682
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e1127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto :goto_1

    .line 7684
    :cond_8
    const-string v0, "Shao nv"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7685
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e112b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_1

    .line 7687
    :cond_9
    const-string v0, "Kaiti"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7688
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e112c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_1

    .line 7690
    :cond_a
    const-string v0, "Miao"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7691
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e112d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_1

    .line 7693
    :cond_b
    const-string v0, "UDRGothic"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7694
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e1128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_1

    .line 7696
    :cond_c
    const-string v0, "UDMincho"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7697
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e1129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_1

    .line 7699
    :cond_d
    const-string v0, "Pop"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7700
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_1

    .line 7702
    :cond_e
    const-string v0, "arjpopb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7703
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_1

    .line 7705
    :cond_f
    const-string v0, "Cool"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7706
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_1

    .line 7708
    :cond_10
    const-string v0, "Rose"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7709
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_1

    .line 7711
    :cond_11
    const-string v0, "Choco"

    invoke-static {v0}, Lcom/android/settings/Utils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7712
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_1

    .line 7714
    :cond_12
    const-string v0, "Foundation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 7715
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e112e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_1

    .line 7718
    :cond_13
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1
.end method

.method public static getFontScale(Landroid/content/Context;I)F
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 3897
    invoke-static {p0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3898
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3902
    .local v0, "indices":[Ljava/lang/String;
    :goto_0
    array-length v2, v0

    if-lt p1, v2, :cond_0

    .line 3903
    array-length v2, v0

    add-int/lit8 p1, v2, -0x1

    .line 3905
    :cond_0
    aget-object v2, v0, p1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 3906
    .local v1, "scale":F
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returning  font scale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3907
    return v1

    .line 3900
    .end local v0    # "indices":[Ljava/lang/String;
    .end local v1    # "scale":F
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "indices":[Ljava/lang/String;
    goto :goto_0
.end method

.method public static getFontSize(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3912
    invoke-static {p0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3913
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3917
    .local v0, "indices":[Ljava/lang/String;
    :goto_0
    array-length v1, v0

    int-to-float v1, v1

    return v1

    .line 3915
    .end local v0    # "indices":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "indices":[Ljava/lang/String;
    goto :goto_0
.end method

.method public static getFotaBadgeCount(Landroid/content/Context;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 5628
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5629
    .local v1, "BADGE_URI":Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "package"

    aput-object v0, v2, v10

    const-string v0, "class"

    aput-object v0, v2, v4

    const-string v0, "badgecount"

    aput-object v0, v2, v5

    .line 5631
    .local v2, "BADGE_COLUMNS":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 5633
    .local v7, "c":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5635
    if-eqz v7, :cond_2

    .line 5637
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5638
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5639
    .local v9, "pkgName":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5640
    .local v8, "className":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 5642
    .local v6, "badgeCount":I
    const-string v0, "com.android.settings"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.Settings"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 5648
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5651
    .end local v6    # "badgeCount":I
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "pkgName":Ljava/lang/String;
    :goto_0
    return v6

    .line 5648
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v6, v10

    .line 5651
    goto :goto_0

    .line 5646
    :catch_0
    move-exception v0

    .line 5648
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getFragment(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 5232
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/16 v1, 0xd

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/Utils;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 9
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2978
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2979
    .local v6, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2981
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 2982
    .local v7, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 2983
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 2984
    .local v5, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v5}, Landroid/content/pm/IntentFilterVerificationInfo;->getDomains()Landroid/util/ArraySet;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2985
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2989
    .end local v2    # "host":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 2990
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 2991
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "http"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "https"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2994
    :cond_3
    invoke-virtual {v0}, Landroid/content/IntentFilter;->getHostsList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2998
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    return-object v7
.end method

.method public static getLabelPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3149
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3150
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 3151
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    .line 3153
    .local v1, "appName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3154
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3160
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3161
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "appName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 3162
    .restart local v1    # "appName":Ljava/lang/String;
    const-string v4, "Settings_Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApplicationInfo is not null. get appName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    :cond_1
    return-object v1

    .line 3156
    :catch_0
    move-exception v2

    .line 3157
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 3158
    const-string v4, "Settings_Utils"

    const-string v5, "Exception occur ApplicationInfo is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2243
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockScreenShowNotificationSummary(Landroid/content/Context;)I
    .locals 7
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7564
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_notifications"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    .line 7566
    .local v2, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_allow_private_notifications"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 7568
    .local v1, "allowPrivate":Z
    :goto_1
    if-nez v2, :cond_2

    const v0, 0x7f0e0e29

    .line 7571
    .local v0, "SelectedValue":I
    :goto_2
    return v0

    .end local v0    # "SelectedValue":I
    .end local v1    # "allowPrivate":Z
    .end local v2    # "enabled":Z
    :cond_0
    move v2, v4

    .line 7564
    goto :goto_0

    .restart local v2    # "enabled":Z
    :cond_1
    move v1, v4

    .line 7566
    goto :goto_1

    .line 7568
    .restart local v1    # "allowPrivate":Z
    :cond_2
    if-eqz v1, :cond_3

    const v0, 0x7f0e0e27

    goto :goto_2

    :cond_3
    const v0, 0x7f0e0e28

    goto :goto_2
.end method

.method public static getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;
    .locals 7
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 2540
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 2541
    .local v4, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 2542
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2543
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 2544
    .local v2, "profile":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 2542
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2547
    :cond_1
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 2548
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2552
    .end local v2    # "profile":Landroid/os/UserHandle;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getMeProfileName(Landroid/content/Context;ZLandroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "full"    # Z
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 2230
    if-eqz p1, :cond_0

    .line 2231
    invoke-static {p0, p2}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v0

    .line 2233
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p2}, Lcom/android/settings/Utils;->getShorterNameIfPossible(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMenuPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 5151
    invoke-static {p1}, Lcom/android/settings/search/Ranking;->getMenuPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberOfEmailAccount(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 7735
    const-string v0, "content://com.samsung.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7736
    .local v1, "ACCOUNT_CONTENT_URI":Landroid/net/Uri;
    const-string v6, "emailAddress"

    .line 7737
    .local v6, "EMAILADDRESS":Ljava/lang/String;
    const/4 v7, 0x0

    .line 7738
    .local v7, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 7740
    .local v9, "numAccount":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "emailAddress"

    aput-object v4, v2, v3

    const-string v3, "emailAddress!=\'snc@snc.snc\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 7743
    if-eqz v7, :cond_0

    .line 7744
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 7748
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7749
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7751
    :cond_1
    :goto_0
    return v9

    .line 7745
    :catch_0
    move-exception v8

    .line 7746
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7748
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7749
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 7748
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7749
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getNumericString(Landroid/content/Intent;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "tIntent"    # Landroid/content/Intent;
    .param p1, "mSimSlot"    # I
    .param p2, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 6756
    move-object v3, p2

    .line 6757
    .local v3, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_FixApn4SpecificMccMnc"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6760
    const-string v4, "21405"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6761
    const-string v3, "21407"

    .line 6764
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6767
    :cond_1
    const-string v4, "ril.ICC_TYPE"

    const-string v5, ""

    invoke-static {v4, p1, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6768
    .local v1, "cardType":Ljava/lang/String;
    const-string v4, "gsm.sim.cdmaoperator.numeric"

    const-string v5, ""

    invoke-static {v4, p1, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6770
    .local v2, "cdmaOperator":Ljava/lang/String;
    const-string v4, "3"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "4"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const-string v4, "45502"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "46003"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6772
    :cond_3
    move-object v3, v2

    .line 6776
    .end local v1    # "cardType":Ljava/lang/String;
    .end local v2    # "cdmaOperator":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGlobalRoamingLRA()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6777
    const-string v4, "gsm.apn.sim.operator.numeric"

    const-string v5, ""

    invoke-static {v4, p1, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6778
    .local v0, "SimNumericLRA":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isLRASimInserted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6779
    const-string v4, "Settings_Utils"

    const-string v5, "LRA operator customization - overwrite mcc/mnc -"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6780
    const-string v4, "Settings_Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Actual = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Modified = 311480"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6781
    const-string v3, "311480"

    .line 6787
    .end local v0    # "SimNumericLRA":Ljava/lang/String;
    :cond_5
    :goto_0
    return-object v3

    .line 6783
    .restart local v0    # "SimNumericLRA":Ljava/lang/String;
    :cond_6
    const-string v4, "Settings_Utils"

    const-string v5, "LRA operator customization - Using Sim numeric"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6784
    move-object v3, v0

    goto :goto_0
.end method

.method public static getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 6018
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const v0, 0x7f0e0e95

    .line 6019
    .local v0, "status":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6018
    .end local v0    # "status":I
    :cond_0
    const v0, 0x7f0e0e96

    goto :goto_0
.end method

.method public static getOtherDefaultsSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/hardware/usb/IUsbManager;Landroid/appwidget/AppWidgetManager;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "usbManager"    # Landroid/hardware/usb/IUsbManager;
    .param p3, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2934
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/Utils;->hasAppDefaults(Landroid/content/pm/PackageManager;Landroid/hardware/usb/IUsbManager;Landroid/appwidget/AppWidgetManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2935
    const v0, 0x7f0e13a1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2937
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0e0f0f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPreferenceToSpecificActivityTitleInfo(Landroid/content/Context;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 4513
    const-string v5, ""

    .line 4515
    .local v5, "titleString":Ljava/lang/CharSequence;
    if-eqz p1, :cond_2

    .line 4517
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4518
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4519
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 4521
    .local v2, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 4522
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 4524
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 4526
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_0

    .line 4528
    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 4531
    :cond_0
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4536
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "listSize":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_1
    return-object v6

    .line 4521
    .restart local v0    # "i":I
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "listSize":I
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4536
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "listSize":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static getPrivacyAndSafetyTitle(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 7576
    const v2, 0x7f0e138c

    .line 7577
    .local v2, "resourcesId":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 7578
    .local v1, "isSecondaryUser":Z
    :goto_0
    const/4 v0, 0x0

    .line 7580
    .local v0, "isSafetyPackageExist":Z
    const-string v3, "com.sec.android.app.safetyassurance"

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7581
    const/4 v0, 0x1

    .line 7584
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7585
    const v2, 0x7f0e11b3

    .line 7600
    :cond_1
    :goto_1
    return v2

    .line 7577
    .end local v0    # "isSafetyPackageExist":Z
    .end local v1    # "isSecondaryUser":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 7587
    .restart local v0    # "isSafetyPackageExist":Z
    .restart local v1    # "isSecondaryUser":Z
    :cond_3
    if-nez v0, :cond_4

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 7588
    const v2, 0x7f0e11b3

    goto :goto_1

    .line 7590
    :cond_4
    if-eqz v1, :cond_1

    .line 7591
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 7592
    const v2, 0x7f0e11b3

    goto :goto_1

    .line 7594
    :cond_5
    const v2, 0x7f0e11b4

    goto :goto_1
.end method

.method private static final getProfileDisplayName(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2297
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2299
    .local v8, "profile":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 2322
    :goto_0
    return-object v3

    .line 2302
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 2322
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2305
    :cond_1
    :try_start_1
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .line 2306
    .local v9, "um":Landroid/os/UserManager;
    if-eqz p1, :cond_2

    iget v10, p1, Landroid/content/pm/UserInfo;->id:I

    .line 2308
    .local v10, "userId":I
    :goto_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 2309
    .local v6, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 2310
    .local v7, "phoneNumber":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 2311
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2312
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 2320
    :goto_2
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 2322
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2306
    .end local v6    # "manager":Landroid/telephony/TelephonyManager;
    .end local v7    # "phoneNumber":Ljava/lang/String;
    .end local v10    # "userId":I
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    goto :goto_1

    .line 2322
    .restart local v6    # "manager":Landroid/telephony/TelephonyManager;
    .restart local v7    # "phoneNumber":Ljava/lang/String;
    .restart local v10    # "userId":I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2317
    :cond_4
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2322
    .end local v6    # "manager":Landroid/telephony/TelephonyManager;
    .end local v7    # "phoneNumber":Ljava/lang/String;
    .end local v9    # "um":Landroid/os/UserManager;
    .end local v10    # "userId":I
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 6293
    const/4 v3, 0x0

    .line 6294
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 6295
    .local v2, "nodeName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 6296
    .local v8, "sv_removepreference":Ljava/lang/String;
    const/4 v7, 0x0

    .line 6297
    .local v7, "sv_ShowSettingsInOtherMode":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6299
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v10, 0x0

    .line 6345
    :goto_0
    return-object v10

    .line 6302
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 6303
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 6306
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    .local v9, "type":I
    if-eq v9, v12, :cond_2

    if-ne v9, v11, :cond_1

    .line 6310
    :cond_2
    if-eq v9, v12, :cond_4

    .line 6311
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": No start tag found!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6336
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "type":I
    :catch_0
    move-exception v1

    .line 6337
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v4, 0x0

    .line 6338
    :try_start_1
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Error parsing Preference xml in UPSM"

    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6343
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v10

    if-eqz v3, :cond_3

    .line 6344
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    move-object v10, v4

    .line 6345
    goto :goto_0

    .line 6314
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v9    # "type":I
    :cond_4
    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    if-eq v9, v11, :cond_7

    .line 6315
    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    const/4 v10, 0x4

    if-eq v9, v10, :cond_4

    .line 6319
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 6321
    sget-object v10, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p0, v0, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 6322
    .local v6, "sa_preference":Landroid/content/res/TypedArray;
    const/4 v10, 0x6

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 6324
    sget-object v10, Lcom/android/settings/R$styleable;->ShowSettingsInOtherMode:[I

    invoke-virtual {p0, v0, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 6325
    .local v5, "sa_ShowSettingsInOtherMode":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6327
    if-nez v7, :cond_5

    .line 6328
    const-string v7, ""

    .line 6330
    :cond_5
    invoke-virtual {v7, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 6331
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6333
    :cond_6
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 6334
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 6339
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "sa_ShowSettingsInOtherMode":Landroid/content/res/TypedArray;
    .end local v6    # "sa_preference":Landroid/content/res/TypedArray;
    .end local v9    # "type":I
    :catch_1
    move-exception v1

    .line 6340
    .local v1, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 6341
    :try_start_3
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Error parsing Preference xml in UPSM"

    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6343
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v9    # "type":I
    :cond_7
    if-eqz v3, :cond_8

    .line 6344
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    move-object v10, v4

    .line 6345
    goto/16 :goto_0
.end method

.method public static getResIdForUserManual()I
    .locals 2

    .prologue
    .line 7894
    const v0, 0x7f0e1395

    .line 7896
    .local v0, "resId":I
    invoke-static {}, Lcom/android/settings/Utils;->isUsermanualForMOS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7897
    const v0, 0x7f0e1396

    .line 7899
    :cond_0
    return v0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3281
    const-string v1, ""

    .line 3284
    .local v1, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3285
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3286
    const-string v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3292
    :cond_0
    :goto_0
    return-object v1

    .line 3288
    :catch_0
    move-exception v0

    .line 3289
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Utils"

    const-string v3, "readSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 10
    .param p0, "activityToken"    # Landroid/os/IBinder;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "arguments"    # Landroid/os/Bundle;
    .param p3, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 2630
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-direct {v2, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 2631
    .local v2, "currentUser":Landroid/os/UserHandle;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2633
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    .line 2634
    .local v5, "launchedFromPackage":Ljava/lang/String;
    const-string v8, "com.android.settings"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2636
    .local v6, "launchedFromSettingsApp":Z
    new-instance v7, Landroid/os/UserHandle;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 2638
    .local v7, "launchedFromUser":Landroid/os/UserHandle;
    if-eqz v7, :cond_0

    invoke-virtual {v7, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2640
    invoke-static {p1, v7}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2664
    .end local v5    # "launchedFromPackage":Ljava/lang/String;
    .end local v6    # "launchedFromSettingsApp":Z
    .end local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :goto_0
    return-object v7

    .line 2644
    .restart local v5    # "launchedFromPackage":Ljava/lang/String;
    .restart local v6    # "launchedFromSettingsApp":Z
    .restart local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :cond_0
    if-eqz p3, :cond_1

    const-string v8, "android.intent.extra.USER"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    move-object v4, v8

    .line 2646
    .local v4, "extrasUser":Landroid/os/UserHandle;
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2648
    if-eqz v6, :cond_2

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v7, v4

    .line 2649
    goto :goto_0

    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_1
    move-object v4, v1

    .line 2644
    goto :goto_1

    .line 2652
    .restart local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_2
    if-eqz p2, :cond_3

    const-string v8, "android.intent.extra.USER"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    move-object v1, v8

    .line 2654
    .local v1, "argumentsUser":Landroid/os/UserHandle;
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2656
    if-eqz v6, :cond_4

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    move-object v7, v1

    .line 2657
    goto :goto_0

    .line 2660
    .end local v1    # "argumentsUser":Landroid/os/UserHandle;
    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    .end local v5    # "launchedFromPackage":Ljava/lang/String;
    .end local v6    # "launchedFromSettingsApp":Z
    .end local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :catch_0
    move-exception v3

    .line 2662
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "Settings_Utils"

    const-string v9, "Could not talk to activity manager."

    invoke-static {v8, v9, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4
    move-object v7, v2

    .line 2664
    goto :goto_0
.end method

.method public static getSelectableEnableState(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Z
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "tIntent"    # Landroid/content/Intent;
    .param p2, "mccmnc"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;

    .prologue
    .line 7153
    const/4 v5, 0x3

    new-array v4, v5, [Z

    .line 7155
    .local v4, "states":[Z
    if-eqz p6, :cond_0

    const-string v5, "mms"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "mms2"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "mms,mms2"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_0
    const/4 v3, 0x1

    .line 7156
    .local v3, "selectable":Z
    :goto_0
    const/4 v1, 0x1

    .line 7157
    .local v1, "enable":Z
    const/4 v0, 0x1

    .line 7159
    .local v0, "editable":Z
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7160
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 7161
    .local v2, "pos":I
    const/4 v5, 0x4

    if-ge v2, v5, :cond_8

    .line 7162
    const/4 v0, 0x0

    .line 7168
    .end local v2    # "pos":I
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7169
    const-string v5, "fourgsmartphone"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7170
    const/4 v0, 0x0

    .line 7174
    :cond_2
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 7175
    invoke-static {p1}, Lcom/android/settings/Utils;->isVzwEditable(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 7176
    const/4 v3, 0x1

    .line 7220
    :goto_2
    const-string v5, "ims"

    invoke-virtual {v5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 7221
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "TGY"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "FTM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "SER"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 7223
    :cond_3
    const/4 v3, 0x0

    .line 7226
    :cond_4
    const-string v5, "xcap"

    invoke-virtual {v5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "DTM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "DTR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "TMZ"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "DCZ"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7229
    :cond_5
    const/4 v3, 0x0

    .line 7245
    :cond_6
    const/4 v5, 0x0

    aput-boolean v3, v4, v5

    .line 7246
    const/4 v5, 0x1

    aput-boolean v1, v4, v5

    .line 7247
    const/4 v5, 0x2

    aput-boolean v0, v4, v5

    .line 7249
    const-string v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ enable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ editable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7251
    return-object v4

    .line 7155
    .end local v0    # "editable":Z
    .end local v1    # "enable":Z
    .end local v3    # "selectable":Z
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 7163
    .restart local v0    # "editable":Z
    .restart local v1    # "enable":Z
    .restart local v2    # "pos":I
    .restart local v3    # "selectable":Z
    :cond_8
    const/4 v5, 0x6

    if-ne v2, v5, :cond_1

    .line 7164
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 7178
    .end local v2    # "pos":I
    :cond_9
    invoke-static {p2}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 7179
    const-string v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pref1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7181
    const-string v5, "Verizon Internet"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "6"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "LTE - Verizon Internet"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "VZW Roaming Internet"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 7182
    :cond_a
    const/4 v3, 0x1

    .line 7183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "db_vzw_default_apn_name"

    invoke-static {v5, v6, p4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 7185
    :cond_b
    const/4 v3, 0x0

    .line 7186
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 7189
    :cond_c
    const-string v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pref2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7191
    const-string v5, "LTE - Verizon Internet"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 7192
    const/4 v3, 0x0

    .line 7193
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 7195
    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 7199
    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 7200
    invoke-static {p1}, Lcom/android/settings/Utils;->isSprEditable(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 7201
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 7203
    :cond_f
    invoke-static {p2}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 7204
    const-string v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pref1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7205
    const/4 v3, 0x1

    .line 7206
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 7208
    :cond_10
    const-string v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pref2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7209
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 7212
    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_BlockToSelectDunApnType"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 7213
    if-eqz p6, :cond_12

    const-string v5, "mms"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "mms2"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "mms,mms2"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "dun"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    :cond_12
    const/4 v3, 0x1

    :goto_3
    goto/16 :goto_2

    :cond_13
    const/4 v3, 0x0

    goto :goto_3

    .line 7214
    :cond_14
    const-string v5, "3 share"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 7215
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 7217
    :cond_15
    if-eqz p6, :cond_16

    const-string v5, "mms"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "mms2"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "mms,mms2"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    :cond_16
    const/4 v3, 0x1

    :goto_4
    goto/16 :goto_2

    :cond_17
    const/4 v3, 0x0

    goto :goto_4
.end method

.method public static getSelectedApnKeyCursor(Landroid/content/Context;IJ)Landroid/database/Cursor;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "mSimSlot"    # I
    .param p2, "mSubId"    # J

    .prologue
    const/4 v3, 0x0

    .line 7404
    const/4 v6, 0x0

    .line 7405
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7408
    return-object v6
.end method

.method public static getSelectedFontSize(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 3921
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3922
    .local v0, "ret":I
    invoke-static {p0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3923
    if-ltz v0, :cond_0

    if-le v0, v3, :cond_1

    .line 3924
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3925
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3928
    :cond_1
    return v0
.end method

.method private static getShorterNameIfPossible(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 2238
    invoke-static {p0}, Lcom/android/settings/Utils;->getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2239
    .local v0, "given":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "given":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "given":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "Sim_id"    # I

    .prologue
    .line 6108
    const/4 v3, 0x0

    .line 6109
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 6110
    .local v4, "sim_icon2":I
    const/4 v1, 0x0

    .line 6113
    .local v1, "retDrawable":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 6114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 6119
    :goto_0
    if-nez p1, :cond_0

    move v2, v3

    .line 6120
    .local v2, "ret_sim_icon":I
    :goto_1
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM 1 ICON : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SIM 2 ICON : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ret_sim_icon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6122
    packed-switch v2, :pswitch_data_0

    .line 6154
    const v1, 0x7f0202d3

    .line 6157
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    return-object v5

    .line 6115
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 6117
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 6119
    goto :goto_1

    .line 6124
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    const v1, 0x7f0202d3

    .line 6125
    goto :goto_2

    .line 6127
    :pswitch_1
    const v1, 0x7f0202d4

    .line 6128
    goto :goto_2

    .line 6130
    :pswitch_2
    const v1, 0x7f0202d6

    .line 6131
    goto :goto_2

    .line 6133
    :pswitch_3
    const v1, 0x7f0202dc

    .line 6134
    goto :goto_2

    .line 6136
    :pswitch_4
    const v1, 0x7f0202da

    .line 6137
    goto :goto_2

    .line 6139
    :pswitch_5
    const v1, 0x7f0202d9

    .line 6140
    goto :goto_2

    .line 6142
    :pswitch_6
    const v1, 0x7f0202d8

    .line 6143
    goto :goto_2

    .line 6145
    :pswitch_7
    const v1, 0x7f0202db

    .line 6146
    goto :goto_2

    .line 6148
    :pswitch_8
    const v1, 0x7f0202d7

    .line 6149
    goto :goto_2

    .line 6151
    :pswitch_9
    const v1, 0x7f0202d5

    .line 6152
    goto :goto_2

    .line 6122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getSpcode(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 6680
    const/4 v1, 0x0

    .line 6681
    .local v1, "phoneContext":Landroid/content/Context;
    const-string v3, ""

    .line 6684
    .local v3, "spcode":Ljava/lang/String;
    :try_start_0
    const-string v5, "com.android.phone"

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 6690
    :goto_0
    if-nez v1, :cond_0

    .line 6691
    const-string v5, "ApnSettings"

    const-string v6, "Unable to get phone context"

    invoke-static {v5, v6}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 6703
    .end local v3    # "spcode":Ljava/lang/String;
    .local v4, "spcode":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 6686
    .end local v4    # "spcode":Ljava/lang/String;
    .restart local v3    # "spcode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 6687
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0

    .line 6695
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 6697
    .local v2, "preferences":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_1

    .line 6698
    const-string v5, "ApnSettings"

    const-string v6, "get phone shared preference"

    invoke-static {v5, v6}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 6699
    const-string v5, "key_gid1"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6702
    :cond_1
    const-string v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get spcode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 6703
    .end local v3    # "spcode":Ljava/lang/String;
    .restart local v4    # "spcode":Ljava/lang/String;
    goto :goto_1
.end method

.method private static getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 2815
    :try_start_0
    const-string v1, "android"

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2816
    .local v0, "sys":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Lcom/android/settings/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2819
    .end local v0    # "sys":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 2817
    :catch_0
    move-exception v1

    .line 2819
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTargetClassByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1382
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1383
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return-object v0

    .line 1384
    :cond_1
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1385
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1386
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1387
    .local v0, "clazz":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getTargetPkgByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1371
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1372
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_1

    .line 1378
    :cond_0
    :goto_0
    return-object v2

    .line 1373
    :cond_1
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1374
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1375
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1376
    .local v2, "pkg":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 10
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    const v8, 0x7f0e074f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2183
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 2184
    .local v3, "usbRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 2185
    .local v5, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 2187
    .local v1, "bluetoothRegexs":[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_0

    move v2, v6

    .line 2188
    .local v2, "usbAvailable":Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_1

    move v4, v6

    .line 2189
    .local v4, "wifiAvailable":Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_2

    move v0, v6

    .line 2191
    .local v0, "bluetoothAvailable":Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v6, v8

    .line 2204
    :goto_3
    return v6

    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "usbAvailable":Z
    .end local v4    # "wifiAvailable":Z
    :cond_0
    move v2, v7

    .line 2187
    goto :goto_0

    .restart local v2    # "usbAvailable":Z
    :cond_1
    move v4, v7

    .line 2188
    goto :goto_1

    .restart local v4    # "wifiAvailable":Z
    :cond_2
    move v0, v7

    .line 2189
    goto :goto_2

    .line 2193
    .restart local v0    # "bluetoothAvailable":Z
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    move v6, v8

    .line 2194
    goto :goto_3

    .line 2195
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 2196
    goto :goto_3

    .line 2197
    :cond_5
    if-eqz v4, :cond_6

    .line 2198
    const v6, 0x7f0e074c

    goto :goto_3

    .line 2199
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 2200
    const v6, 0x7f0e074e

    goto :goto_3

    .line 2201
    :cond_7
    if-eqz v2, :cond_8

    .line 2202
    const v6, 0x7f0e074b

    goto :goto_3

    .line 2204
    :cond_8
    const v6, 0x7f0e074d

    goto :goto_3
.end method

.method public static getTetheringSummary(Landroid/content/Context;Landroid/net/ConnectivityManager;)I
    .locals 10
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    const v8, 0x7f0e13bd

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4469
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 4470
    .local v3, "usbRegexs":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 4471
    .local v5, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 4472
    .local v1, "bluetoothRegexs":[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_2

    move v2, v6

    .line 4473
    .local v2, "usbAvailable":Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_3

    move v4, v6

    .line 4475
    .local v4, "wifiAvailable":Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_4

    move v0, v6

    .line 4477
    .local v0, "bluetoothAvailable":Z
    :goto_2
    const-string v6, "VZW"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "SPRINT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4479
    :cond_0
    const/4 v4, 0x0

    .line 4493
    :cond_1
    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 4508
    :goto_3
    return v6

    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "usbAvailable":Z
    .end local v4    # "wifiAvailable":Z
    :cond_2
    move v2, v7

    .line 4472
    goto :goto_0

    .restart local v2    # "usbAvailable":Z
    :cond_3
    move v4, v7

    .line 4473
    goto :goto_1

    .restart local v4    # "wifiAvailable":Z
    :cond_4
    move v0, v7

    .line 4475
    goto :goto_2

    .line 4495
    .restart local v0    # "bluetoothAvailable":Z
    :cond_5
    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    .line 4496
    const v6, 0x7f0e13be

    goto :goto_3

    .line 4497
    :cond_6
    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    move v6, v8

    .line 4498
    goto :goto_3

    .line 4499
    :cond_7
    if-eqz v4, :cond_8

    .line 4500
    const v6, 0x7f0e13bf

    goto :goto_3

    .line 4501
    :cond_8
    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 4502
    const v6, 0x7f0e13c2

    goto :goto_3

    .line 4503
    :cond_9
    if-eqz v2, :cond_a

    .line 4504
    const v6, 0x7f0e13c0

    goto :goto_3

    .line 4505
    :cond_a
    if-eqz v0, :cond_b

    .line 4506
    const v6, 0x7f0e13c1

    goto :goto_3

    :cond_b
    move v6, v8

    .line 4508
    goto :goto_3
.end method

.method public static getTileBackgroundId(II)I
    .locals 1
    .param p0, "categoryId"    # I
    .param p1, "tileId"    # I

    .prologue
    .line 5577
    const v0, 0x7f020155

    .line 5578
    .local v0, "backgroundId":I
    sparse-switch p0, :sswitch_data_0

    .line 5598
    :goto_0
    return v0

    .line 5580
    :sswitch_0
    const v0, 0x7f020156

    .line 5581
    goto :goto_0

    .line 5583
    :sswitch_1
    const v0, 0x7f02015c

    .line 5584
    goto :goto_0

    .line 5586
    :sswitch_2
    const v0, 0x7f02015e

    .line 5587
    goto :goto_0

    .line 5589
    :sswitch_3
    const v0, 0x7f02015a

    .line 5590
    goto :goto_0

    .line 5592
    :sswitch_4
    const v0, 0x7f020158

    .line 5593
    goto :goto_0

    .line 5578
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d064a -> :sswitch_0
        0x7f0d0661 -> :sswitch_4
        0x7f0d0666 -> :sswitch_1
        0x7f0d067b -> :sswitch_2
        0x7f0d0691 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getTileIconColor(Landroid/content/Context;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryId"    # I
    .param p2, "tileId"    # I

    .prologue
    .line 5551
    const/high16 v0, -0x1000000

    .line 5552
    .local v0, "categoryColor":I
    sparse-switch p1, :sswitch_data_0

    .line 5572
    :goto_0
    return v0

    .line 5554
    :sswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5555
    goto :goto_0

    .line 5557
    :sswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5558
    goto :goto_0

    .line 5560
    :sswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5561
    goto :goto_0

    .line 5563
    :sswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5564
    goto :goto_0

    .line 5566
    :sswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5567
    goto :goto_0

    .line 5552
    :sswitch_data_0
    .sparse-switch
        0x7f0d064a -> :sswitch_0
        0x7f0d0661 -> :sswitch_4
        0x7f0d0666 -> :sswitch_1
        0x7f0d067b -> :sswitch_2
        0x7f0d0691 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getTypeOfCover(Landroid/content/Context;)I
    .locals 7
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 5687
    const/4 v3, 0x2

    .line 5689
    .local v3, "type":I
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 5690
    .local v0, "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    if-eqz v0, :cond_0

    .line 5691
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    .line 5692
    .local v2, "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v2, :cond_1

    .line 5693
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 5700
    .end local v0    # "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    .end local v2    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    :goto_0
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scover getTypeOfCover type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5701
    return v3

    .line 5695
    .restart local v0    # "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    .restart local v2    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_1
    :try_start_1
    const-string v4, "Utils"

    const-string v5, "Scover getTypeOfCover ScoverState is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5697
    .end local v0    # "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    .end local v2    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :catch_0
    move-exception v1

    .line 5698
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 2739
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2741
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803eb

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2743
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lcom/android/settings/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/drawable/CircleFramedDrawable;

    move-result-object v2

    .line 2751
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 2745
    :cond_0
    iget-object v2, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2746
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2747
    .local v1, "icon":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 2748
    invoke-static {p0, v1}, Lcom/android/settings/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/drawable/CircleFramedDrawable;

    move-result-object v2

    goto :goto_0

    .line 2751
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/drawable/CircleFramedDrawable;

    move-result-object v2

    goto :goto_0
.end method

.method public static getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 2759
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 2760
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2762
    const v1, 0x7f0e0ea4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2771
    :goto_1
    return-object v1

    .line 2759
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2763
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2764
    const v1, 0x7f0e0d39

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2766
    :cond_2
    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 2767
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2771
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0851

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2768
    :cond_4
    if-nez p1, :cond_3

    .line 2769
    const v1, 0x7f0e006a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static getVersionOfContextProviders(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4269
    const/4 v2, -0x1

    .line 4272
    .local v2, "version":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.providers.context"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4274
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4279
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 4275
    :catch_0
    move-exception v0

    .line 4276
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Settings_Utils"

    const-string v4, "[SW] Could not find ContextProvider"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWallpaperVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 6001
    const/4 v2, 0x0

    .line 6004
    .local v2, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.wallpaperchooser"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 6005
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6011
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 6006
    :catch_0
    move-exception v0

    .line 6007
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWifiDetailedState(Landroid/content/Context;)Landroid/net/NetworkInfo$DetailedState;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4575
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4577
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 4578
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1988
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1990
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1991
    .local v1, "prop":Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 1
    .param p0, "loading"    # Landroid/view/View;
    .param p1, "doneLoading"    # Landroid/view/View;
    .param p2, "done"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 3017
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0, p3}, Lcom/android/settings/Utils;->setViewShown(Landroid/view/View;ZZ)V

    .line 3018
    invoke-static {p1, p2, p3}, Lcom/android/settings/Utils;->setViewShown(Landroid/view/View;ZZ)V

    .line 3019
    return-void

    .line 3017
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasActiveKey()Z
    .locals 5

    .prologue
    .line 5876
    const/4 v0, 0x1

    .line 5878
    .local v0, "hasActiveKey":Z
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5879
    .local v1, "productName":Ljava/lang/String;
    const-string v2, "kactiveltekx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5880
    const/4 v0, 0x0

    .line 5886
    .end local v0    # "hasActiveKey":Z
    :goto_0
    return v0

    .line 5883
    .restart local v0    # "hasActiveKey":Z
    :cond_0
    const/4 v0, 0x0

    .line 5885
    const-string v2, "Settings_Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasActiveKey : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasAppDefaults(Landroid/content/pm/PackageManager;Landroid/hardware/usb/IUsbManager;Landroid/appwidget/AppWidgetManager;Ljava/lang/String;)Z
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "usbManager"    # Landroid/hardware/usb/IUsbManager;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2942
    invoke-virtual {p2, p3}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v1

    .line 2944
    .local v1, "hasBindAppWidgetPermission":Z
    invoke-static {p0, p3}, Lcom/android/settings/Utils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, p3}, Lcom/android/settings/Utils;->isDefaultBrowser(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1, p3}, Lcom/android/settings/Utils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    move v0, v3

    .line 2948
    .local v0, "autoLaunchEnabled":Z
    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    .end local v0    # "autoLaunchEnabled":Z
    :cond_3
    move v0, v2

    .line 2944
    goto :goto_0
.end method

.method public static hasCoverDualClockOptionOnly(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 5822
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5827
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverDualClockOptionOnly false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5828
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5824
    :pswitch_0
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverDualClockOptionOnly true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5825
    const/4 v0, 0x1

    goto :goto_0

    .line 5822
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public static hasCoverLEDCallerID(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 5807
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5808
    .local v0, "productName":Ljava/lang/String;
    const-string v2, "hero"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5817
    :goto_0
    return v1

    .line 5811
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 5816
    const-string v2, "Utils"

    const-string v3, "SView cover hasCoverCallerID false"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5813
    :pswitch_0
    const-string v1, "Utils"

    const-string v2, "SView cover hasCoverCallerID true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5814
    const/4 v1, 0x1

    goto :goto_0

    .line 5811
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public static hasCoverSettingAppShortcut(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 5779
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5786
    :pswitch_0
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverSetting - Notifications false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5787
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5783
    :pswitch_1
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverSetting - Notifications true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5784
    const/4 v0, 0x1

    goto :goto_0

    .line 5779
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasCoverSettingOptions(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 5727
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5734
    :pswitch_0
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverSettingOptions false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5735
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5731
    :pswitch_1
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverSettingOptions true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5732
    const/4 v0, 0x1

    goto :goto_0

    .line 5727
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasCoverSettingOwnerInfo(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 5753
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5760
    :pswitch_0
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverSetting - OwnerInfo false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5761
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5757
    :pswitch_1
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverSetting - OwnerInfo true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5758
    const/4 v0, 0x1

    goto :goto_0

    .line 5753
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasCoverSettingShowNotifications(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 5766
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5773
    :pswitch_0
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverSetting - Notifications false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5774
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5770
    :pswitch_1
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverSetting - Notifications true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5771
    const/4 v0, 0x1

    goto :goto_0

    .line 5766
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasCoverSettingWeather(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 5740
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5747
    :pswitch_0
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverSetting - Weather false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5748
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5744
    :pswitch_1
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverSetting - Weather true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5745
    const/4 v0, 0x1

    goto :goto_0

    .line 5740
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasCoverWallpaper(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 5792
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5802
    :goto_0
    return v0

    .line 5794
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5801
    :pswitch_0
    const-string v1, "Utils"

    const-string v2, "SView cover hasCoverWallpaper false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5798
    :pswitch_1
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverWallpaper true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5799
    const/4 v0, 0x1

    goto :goto_0

    .line 5794
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasDSModelNumberInOneAP(Ljava/lang/String;)Z
    .locals 5
    .param p0, "modelnumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 5905
    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5907
    .local v0, "productName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "a5x"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "a7x"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5908
    :cond_0
    const-string v4, "ro.revision"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5909
    .local v1, "revision":I
    const/16 v4, 0x8

    if-lt v1, v4, :cond_4

    const/16 v4, 0xf

    if-gt v1, v4, :cond_4

    .line 5919
    .end local v1    # "revision":I
    :cond_1
    :goto_0
    return v3

    .line 5913
    :cond_2
    const-string v4, "hero"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "SM-G930F"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "SM-G935F"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5915
    :cond_3
    const-string v4, "ro.multisim.simslotcount"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5916
    .local v2, "simslotcount":Ljava/lang/String;
    const-string v4, "2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5919
    .end local v2    # "simslotcount":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasDockSettings(Landroid/content/Context;)Z
    .locals 7
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5667
    invoke-static {p0}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v0

    .line 5668
    .local v0, "hasCover":Z
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasDockSettings : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5669
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_wireless_charger_menu"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 5670
    .local v1, "show":I
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasDockSettings(wireless_chager) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5671
    if-nez v0, :cond_0

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2
.end method

.method public static hasFMMDMClient(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3112
    const-string v1, "com.fmm.dm"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "com.samsung.fmm"

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    const-string v2, "com.samsung.android.fmm"

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    or-int v0, v1, v2

    .line 3116
    .local v0, "hasFMMDMClient":Z
    return v0
.end method

.method public static declared-synchronized hasFingerprintFeature(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 3794
    const-class v1, Lcom/android/settings/Utils;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/android/settings/Utils;->mFeatureChecked:Z

    if-eqz v2, :cond_0

    .line 3795
    sget-boolean v0, Lcom/android/settings/Utils;->mFeatureEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3800
    :goto_0
    monitor-exit v1

    return v0

    .line 3797
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    sput-boolean v0, Lcom/android/settings/Utils;->mFeatureEnabled:Z

    .line 3799
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/Utils;->mFeatureChecked:Z

    .line 3800
    sget-boolean v0, Lcom/android/settings/Utils;->mFeatureEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3797
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3794
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasHDMImenuinAccessories()Z
    .locals 1

    .prologue
    .line 5997
    const/4 v0, 0x0

    return v0
.end method

.method public static hasHaptic(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 975
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 976
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasLargerThan10inchScreen()Z
    .locals 2

    .prologue
    .line 7783
    const-string v0, "grande"

    const-string v1, "ro.build.scafe.size"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7784
    const/4 v0, 0x1

    .line 7786
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasMultipleUsers(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2366
    if-nez p0, :cond_0

    .line 2375
    :goto_0
    return v3

    .line 2370
    :cond_0
    :try_start_0
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-le v1, v2, :cond_1

    move v1, v2

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    .line 2372
    :catch_0
    move-exception v0

    .line 2373
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Utils"

    const-string v2, "Cannot get Multi-user info"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3120
    if-nez p0, :cond_0

    .line 3121
    const/4 v1, 0x0

    .line 3133
    :goto_0
    return v1

    .line 3123
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3124
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 3127
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3128
    :catch_0
    move-exception v0

    .line 3129
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 3130
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2969
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2971
    .local v1, "prefActList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2972
    .local v0, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 2973
    const-string v2, "Settings_Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " number of activities in preferred list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasSPenFeature(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 6539
    const/4 v0, 0x0

    .line 6540
    .local v0, "mHasSPenFeature":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 6542
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportActionMemoOnLockScreen FEATURE_SPEN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6543
    return v0
.end method

.method public static hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "usbManager"    # Landroid/hardware/usb/IUsbManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2958
    if-eqz p0, :cond_0

    .line 2959
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {p0, p1, v1}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2964
    :goto_0
    return v1

    .line 2961
    :catch_0
    move-exception v0

    .line 2962
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Settings_Utils"

    const-string v2, "mUsbManager.hasDefaults"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2964
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasXcoverKeySetting()Z
    .locals 2

    .prologue
    .line 5890
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5891
    .local v0, "productName":Ljava/lang/String;
    const-string v1, "SC-01H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "N533"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5892
    :cond_0
    const/4 v1, 0x1

    .line 5894
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 2895
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2898
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 2900
    .local v1, "resId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2901
    invoke-virtual {p0, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public static initHideList()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 6662
    const/4 v0, 0x0

    .line 6663
    .local v0, "hideApnList":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_HideApnList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6664
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_HideApnList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6666
    .local v1, "hideApnString":Ljava/lang/String;
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HIDEAPNLIST : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 6667
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6668
    if-nez v0, :cond_0

    .line 6669
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 6670
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 6675
    .end local v1    # "hideApnString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 6673
    :cond_1
    const-string v2, "ApnSettings"

    const-string v3, "TAG_CSCFEATURE_SETTING_HIDEAPNLIST is empty"

    invoke-static {v2, v3}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initMainMenues(Landroid/content/Context;Ljava/util/List;)V
    .locals 15
    .param p0, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4960
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    const/4 v8, 0x1

    .line 4962
    .local v8, "rank":I
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/DashboardCategory;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4963
    .local v1, "category":Lcom/android/settings/dashboard/DashboardCategory;
    const/4 v4, 0x0

    .local v4, "i":I
    move v9, v8

    .end local v8    # "rank":I
    .local v9, "rank":I
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v12

    if-ge v4, v12, :cond_8

    .line 4964
    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v11

    .line 4965
    .local v11, "tile":Lcom/android/settings/dashboard/DashboardTile;
    iget v12, v11, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    if-lez v12, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget v13, v11, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4967
    .local v7, "name":Ljava/lang/String;
    :goto_2
    const/4 v12, 0x5

    new-array v6, v12, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4968
    .local v6, "info":[Ljava/lang/Object;
    const/4 v12, 0x0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "rank":I
    .restart local v8    # "rank":I
    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v12

    .line 4969
    const/4 v12, 0x1

    iget v13, v11, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v12

    .line 4970
    const/4 v12, 0x2

    iget v13, v11, Lcom/android/settings/dashboard/DashboardTile;->categoryId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v12

    .line 4971
    const/4 v12, 0x3

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v12

    .line 4972
    const/4 v12, 0x4

    aput-object v7, v6, v12

    .line 4973
    iget-object v12, v11, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 4974
    const-string v12, "Index"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "indexing by resource: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4975
    iget-object v12, v11, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    invoke-static {v12, v6}, Lcom/android/settings/search/Ranking;->setInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5003
    :cond_0
    :goto_3
    iget-wide v12, v11, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v12, v12

    invoke-static {p0, v12, v6}, Lcom/android/settings/Utils;->initSpecialMenu(Landroid/content/Context;I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4963
    add-int/lit8 v4, v4, 0x1

    move v9, v8

    .end local v8    # "rank":I
    .restart local v9    # "rank":I
    goto :goto_1

    .line 4965
    .end local v6    # "info":[Ljava/lang/Object;
    .end local v7    # "name":Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v12, v11, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    if-eqz v12, :cond_2

    iget-object v12, v11, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    const-string v7, ""
    :try_end_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 4976
    .end local v9    # "rank":I
    .restart local v6    # "info":[Ljava/lang/Object;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "rank":I
    :cond_3
    :try_start_4
    iget-object v12, v11, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v12, :cond_0

    .line 4977
    const-string v12, "Index"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "indexing by raw: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4978
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v10, p0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 4979
    .local v10, "raw":Lcom/android/settings/search/SearchIndexableRaw;
    const/4 v12, 0x0

    aget-object v12, v6, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v10, Lcom/android/settings/search/SearchIndexableRaw;->rank:I

    .line 4980
    const/4 v12, 0x1

    aget-object v12, v6, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v10, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    .line 4981
    const/4 v12, 0x2

    aget-object v12, v6, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v10, Lcom/android/settings/search/SearchIndexableRaw;->categoryId:I

    .line 4982
    const/4 v12, 0x3

    aget-object v12, v6, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v10, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 4983
    iput-object v7, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 4984
    iput-object v7, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 4985
    iget-object v12, v11, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-static {p0, v12}, Lcom/android/settings/Utils;->getTargetPkgByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settings/search/SearchIndexableRaw;->packageName:Ljava/lang/String;

    .line 4986
    iget-object v12, v11, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-static {p0, v12}, Lcom/android/settings/Utils;->getTargetPkgByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 4987
    iget-object v12, v11, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-static {p0, v12}, Lcom/android/settings/Utils;->getTargetClassByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 4988
    iget-object v12, v11, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    if-nez v12, :cond_5

    const/4 v2, 0x0

    .line 4989
    .local v2, "data":Ljava/lang/String;
    :goto_4
    iget-object v12, v11, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4990
    .local v0, "action":Ljava/lang/String;
    if-nez v2, :cond_6

    .line 4991
    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 4995
    :goto_5
    const-string v12, "com.android.settings"

    iget-object v13, v10, Lcom/android/settings/search/SearchIndexableRaw;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 4996
    iget-object v12, v10, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    invoke-static {v12, v6}, Lcom/android/settings/search/Ranking;->setInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5000
    :goto_6
    iget-object v12, v10, Lcom/android/settings/search/SearchIndexableRaw;->packageName:Ljava/lang/String;

    iget v13, v10, Lcom/android/settings/search/SearchIndexableRaw;->rank:I

    invoke-static {v12, v13}, Lcom/android/settings/search/Ranking;->setRankByAuthority(Ljava/lang/String;I)V

    .line 5001
    invoke-static {p0}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/settings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V
    :try_end_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 5006
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "info":[Ljava/lang/Object;
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "raw":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v11    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :catch_0
    move-exception v3

    .line 5007
    .local v3, "e":Ljava/util/ConcurrentModificationException;
    :goto_7
    const-string v12, "Settings_Utils"

    const-string v13, "initMainMenues ConcurrentModificationException\'"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 5009
    .end local v3    # "e":Ljava/util/ConcurrentModificationException;
    :cond_4
    return-void

    .line 4988
    .restart local v1    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .restart local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "info":[Ljava/lang/Object;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v10    # "raw":Lcom/android/settings/search/SearchIndexableRaw;
    .restart local v11    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_5
    :try_start_5
    iget-object v12, v11, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 4993
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "data":Ljava/lang/String;
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    goto :goto_5

    .line 4998
    :cond_7
    iget-object v12, v10, Lcom/android/settings/search/SearchIndexableRaw;->packageName:Ljava/lang/String;

    invoke-static {v12, v6}, Lcom/android/settings/search/Ranking;->setInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/util/ConcurrentModificationException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "data":Ljava/lang/String;
    .end local v6    # "info":[Ljava/lang/Object;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "rank":I
    .end local v10    # "raw":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v11    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .restart local v9    # "rank":I
    :cond_8
    move v8, v9

    .line 5005
    .end local v9    # "rank":I
    .restart local v8    # "rank":I
    goto/16 :goto_0

    .line 5006
    .end local v8    # "rank":I
    .restart local v9    # "rank":I
    :catch_1
    move-exception v3

    move v8, v9

    .end local v9    # "rank":I
    .restart local v8    # "rank":I
    goto :goto_7
.end method

.method private static initSpecialMenu(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 22
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "tileId"    # I
    .param p2, "info"    # [Ljava/lang/Object;

    .prologue
    .line 5014
    packed-switch p1, :pswitch_data_0

    .line 5060
    :goto_0
    return-void

    .line 5016
    :pswitch_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPSM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5017
    const/4 v1, 0x5

    new-array v7, v1, [Ljava/lang/Object;

    .line 5018
    .local v7, "subInfo":[Ljava/lang/Object;
    const/4 v2, 0x0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v3, Lcom/android/settings/search/Ranking;->SUB_DEPTH:I

    mul-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    .line 5019
    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    aput-object v2, v7, v1

    .line 5020
    const/4 v1, 0x2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    aput-object v2, v7, v1

    .line 5021
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    .line 5022
    const-class v1, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e12eb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0e12eb

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e0aa9

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/settings/Utils;->initSpecialMenuRaw(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 5029
    const-class v1, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/android/settings/search/Ranking;->setInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5032
    .end local v7    # "subInfo":[Ljava/lang/Object;
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5033
    const/4 v1, 0x5

    new-array v14, v1, [Ljava/lang/Object;

    .line 5034
    .local v14, "subInfo2":[Ljava/lang/Object;
    const/4 v2, 0x0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v3, Lcom/android/settings/search/Ranking;->SUB_DEPTH:I

    mul-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v2

    .line 5035
    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    aput-object v2, v14, v1

    .line 5036
    const/4 v1, 0x2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    aput-object v2, v14, v1

    .line 5037
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v14, v1

    .line 5038
    const-class v1, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e12f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e12f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f0e0aa9

    move-object/from16 v8, p0

    invoke-static/range {v8 .. v14}, Lcom/android/settings/Utils;->initSpecialMenuRaw(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 5045
    .end local v14    # "subInfo2":[Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 5046
    .local v21, "subInfo3":[Ljava/lang/Object;
    const/4 v2, 0x0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v3, Lcom/android/settings/search/Ranking;->SUB_DEPTH:I

    mul-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v21, v2

    .line 5047
    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    aput-object v2, v21, v1

    .line 5048
    const/4 v1, 0x2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    aput-object v2, v21, v1

    .line 5049
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v21, v1

    .line 5050
    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0aaa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0aaa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f0e0aa9

    move-object/from16 v15, p0

    invoke-static/range {v15 .. v21}, Lcom/android/settings/Utils;->initSpecialMenuRaw(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 5057
    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-static {v1, v0}, Lcom/android/settings/search/Ranking;->setInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5014
    :pswitch_data_0
    .packed-switch 0x7f0d0694
        :pswitch_0
    .end packed-switch
.end method

.method private static initSpecialMenuRaw(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "fragment"    # Ljava/lang/String;
    .param p2, "menu_type"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "screenTitle"    # Ljava/lang/String;
    .param p5, "parentTitleRes"    # I
    .param p6, "subInfo"    # [Ljava/lang/Object;

    .prologue
    .line 5065
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 5066
    .local v0, "raw":Lcom/android/settings/search/SearchIndexableRaw;
    const/4 v1, 0x0

    aget-object v1, p6, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->rank:I

    .line 5067
    const/4 v1, 0x1

    aget-object v1, p6, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    .line 5068
    const/4 v1, 0x2

    aget-object v1, p6, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->categoryId:I

    .line 5069
    iput-object p1, v0, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 5070
    iput-object p3, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 5071
    iput-object p4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 5072
    iput p2, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 5073
    iput p5, v0, Lcom/android/settings/search/SearchIndexableRaw;->parentTitleRes:I

    .line 5074
    invoke-static {p0}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 5075
    return-void
.end method

.method public static initSubMenu(Landroid/content/Context;[Ljava/lang/Object;ILjava/lang/String;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # [Ljava/lang/Object;
    .param p2, "xmlResId"    # I
    .param p3, "parent"    # Ljava/lang/String;

    .prologue
    .line 5086
    const/4 v8, 0x0

    .line 5088
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v4, 0x0

    .line 5090
    .local v4, "idx":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 5094
    :cond_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 5098
    :cond_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 5099
    .local v6, "nodeName":Ljava/lang/String;
    const-string v12, "PreferenceScreen"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 5100
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5137
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_0
    move-exception v3

    .line 5138
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5146
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 5148
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    :goto_1
    return-void

    .line 5105
    .restart local v6    # "nodeName":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_3
    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 5106
    .local v7, "outerDepth":I
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move v5, v4

    .line 5109
    .end local v4    # "idx":I
    .local v5, "idx":I
    :cond_4
    :goto_2
    :try_start_3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_6

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v7, :cond_6

    .line 5110
    :cond_5
    const/4 v12, 0x3

    if-eq v11, v12, :cond_4

    const/4 v12, 0x4

    if-eq v11, v12, :cond_4

    .line 5114
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 5117
    const-string v12, "SwitchPreference"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "CheckBoxPreference"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "SwitchPreference"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 5121
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->getFragment(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v2

    .line 5122
    .local v2, "className":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v10

    .line 5123
    .local v10, "title":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 5124
    const/4 v12, 0x5

    new-array v9, v12, [Ljava/lang/Object;

    .line 5125
    .local v9, "subInfo":[Ljava/lang/Object;
    const/4 v13, 0x0

    const/4 v12, 0x0

    aget-object v12, p1, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sget v14, Lcom/android/settings/search/Ranking;->SUB_DEPTH:I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    mul-int/2addr v12, v14

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    add-int/2addr v12, v5

    :try_start_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v13

    .line 5126
    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-object v13, p1, v13

    aput-object v13, v9, v12

    .line 5127
    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-object v13, p1, v13

    aput-object v13, v9, v12

    .line 5128
    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    .line 5129
    const/4 v12, 0x4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    .line 5130
    invoke-static {v2, v9}, Lcom/android/settings/search/Ranking;->setInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v9    # "subInfo":[Ljava/lang/Object;
    :goto_3
    move v5, v4

    .line 5132
    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    goto/16 :goto_2

    .line 5146
    .end local v2    # "className":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/String;
    :cond_6
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    goto/16 :goto_1

    .line 5139
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "outerDepth":I
    .end local v11    # "type":I
    :catch_1
    move-exception v3

    .line 5140
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5146
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 5141
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v3

    .line 5142
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5146
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 5143
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 5144
    .local v3, "e":Ljava/lang/NullPointerException;
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5146
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v12

    :goto_7
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v12

    .end local v4    # "idx":I
    .restart local v1    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "idx":I
    .restart local v6    # "nodeName":Ljava/lang/String;
    .restart local v7    # "outerDepth":I
    .restart local v11    # "type":I
    :catchall_1
    move-exception v12

    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_7

    .line 5143
    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    :catch_4
    move-exception v3

    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_6

    .line 5141
    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    :catch_5
    move-exception v3

    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_5

    .line 5139
    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    :catch_6
    move-exception v3

    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_4

    .line 5137
    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    :catch_7
    move-exception v3

    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    goto/16 :goto_0

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    :cond_8
    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    goto/16 :goto_1

    .end local v4    # "idx":I
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v5    # "idx":I
    .restart local v10    # "title":Ljava/lang/String;
    :cond_9
    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_3
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 4135
    if-nez p0, :cond_1

    .line 4136
    const-string v4, "Settings_Utils"

    const-string v5, "insertLog() is failed because of context\'s null value"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4159
    :cond_0
    :goto_0
    return-void

    .line 4141
    :cond_1
    invoke-static {p0}, Lcom/android/settings/Utils;->getVersionOfContextProviders(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 4145
    const-string v4, "content://com.samsung.android.providers.context.log.use_app_feature_survey"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 4149
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4150
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4151
    .local v2, "row":Landroid/content/ContentValues;
    const-string v4, "app_id"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4152
    const-string v4, "feature"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4153
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4154
    const-string v4, "Settings_Utils"

    const-string v5, "ContextProvider insertion operation is performed."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4155
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "row":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 4156
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "Settings_Utils"

    const-string v5, "Error while using the ContextProvider"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4157
    const-string v4, "Settings_Utils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 4182
    if-nez p0, :cond_0

    .line 4183
    const-string v2, "Settings_Utils"

    const-string v3, "insertLog() is failed because of context\'s null value"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    :goto_0
    return-void

    .line 4186
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4187
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4188
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4189
    const-string v2, "value"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4192
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4193
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4195
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4197
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4198
    const-string v2, "Settings_Utils"

    const-string v3, "insertLog with value"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 4162
    if-nez p0, :cond_0

    .line 4163
    const-string v2, "Settings_Utils"

    const-string v3, "insertLog() is failed because of context\'s null value"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    :goto_0
    return-void

    .line 4166
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4167
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4168
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4169
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4170
    const-string v2, "Settings_Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog() : app_id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extra : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4173
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4174
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4176
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4178
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 4202
    if-nez p0, :cond_0

    .line 4203
    const-string v2, "Settings_Utils"

    const-string v3, "insertLog() is failed because of context\'s null value"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    :goto_0
    return-void

    .line 4206
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4207
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4208
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4209
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4210
    const-string v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4211
    const-string v2, "Settings_Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog() : app_id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extra : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4214
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4215
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4217
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4219
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4220
    const-string v2, "Settings_Utils"

    const-string v3, "insertLog with value"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static insertMultipleStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "features"    # Ljava/lang/String;
    .param p3, "extras"    # [Ljava/lang/String;
    .param p4, "values"    # [J

    .prologue
    .line 4242
    if-nez p0, :cond_0

    .line 4243
    const-string v3, "Settings_Utils"

    const-string v4, "insertLog() is failed because of context\'s null value"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    :goto_0
    return-void

    .line 4246
    :cond_0
    array-length v3, p3

    new-array v1, v3, [Landroid/content/ContentValues;

    .line 4248
    .local v1, "cvs":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p3

    if-ge v2, v3, :cond_2

    .line 4249
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    aput-object v3, v1, v2

    .line 4250
    aget-object v3, v1, v2

    const-string v4, "app_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4251
    aget-object v3, v1, v2

    const-string v4, "feature"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4252
    aget-object v3, v1, v2

    const-string v4, "extra"

    aget-object v5, p3, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4253
    if-eqz p4, :cond_1

    .line 4254
    aget-object v3, v1, v2

    const-string v4, "value"

    aget-wide v6, p4, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4248
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4258
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4259
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4260
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4261
    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4262
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 4224
    if-nez p0, :cond_0

    .line 4225
    const-string v2, "Settings_Utils"

    const-string v3, "insertLog() is failed because of context\'s null value"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4239
    :goto_0
    return-void

    .line 4228
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4229
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4230
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4231
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4232
    const-string v2, "Settings_Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog() : app_id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extra : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4233
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4234
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4235
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4236
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4238
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mAccessibilityService"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1136
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1137
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    const/16 v0, 0x3a

    .line 1138
    .local v0, "ENABLED_SERVICES_SEPARATOR":C
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3a

    invoke-direct {v4, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1141
    .local v4, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    if-nez p0, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return v5

    .line 1145
    :cond_1
    if-eqz p0, :cond_0

    .line 1146
    if-eqz p1, :cond_0

    .line 1151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1154
    if-nez v3, :cond_2

    .line 1155
    const-string v3, ""

    .line 1158
    :cond_2
    move-object v1, v4

    .line 1159
    .local v1, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1161
    :cond_3
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1162
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 1164
    .local v2, "componentNameString":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1165
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1166
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isAfwProfile(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 7627
    const-string v6, "device_policy"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 7628
    .local v1, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 7631
    const-string v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 7632
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 7633
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 7634
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 7644
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "userManager":Landroid/os/UserManager;
    :cond_1
    :goto_0
    return v5

    .line 7640
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "userManager":Landroid/os/UserManager;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isAirplaneModeEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 4410
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAllAirMotionDisabled(Landroid/content/Context;Z)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "include_external_motion_settings"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1049
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1051
    .local v4, "mResolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_AIR_WAKE_UP"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "air_motion_wake_up"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1054
    .local v2, "airWakeUp":I
    :goto_0
    const-string v7, "air_motion_scroll"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1055
    .local v0, "airScroll":I
    const-string v7, "air_motion_turn"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1057
    .local v1, "airTurn":I
    if-eqz p1, :cond_2

    const-string v7, "air_motion_call_accept"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1058
    .local v3, "callAccept":I
    :goto_1
    or-int v7, v2, v0

    or-int/2addr v7, v1

    or-int/2addr v7, v3

    if-ge v7, v6, :cond_0

    move v5, v6

    :cond_0
    return v5

    .end local v0    # "airScroll":I
    .end local v1    # "airTurn":I
    .end local v2    # "airWakeUp":I
    .end local v3    # "callAccept":I
    :cond_1
    move v2, v5

    .line 1051
    goto :goto_0

    .restart local v0    # "airScroll":I
    .restart local v1    # "airTurn":I
    .restart local v2    # "airWakeUp":I
    :cond_2
    move v3, v5

    .line 1057
    goto :goto_1
.end method

.method public static isAllNAVendor()Z
    .locals 2

    .prologue
    .line 727
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CSP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TFN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ACG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BNN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XAA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    :cond_0
    const/4 v1, 0x1

    .line 735
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAppOptUIAvailable(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 759
    const-string v1, "com.samsung.android.sm"

    .line 760
    .local v1, "SMART_MANGAGER":Ljava/lang/String;
    const-string v0, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    .line 761
    .local v0, "APP_OPTIMIZATION_INTENT":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 763
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string v9, "com.samsung.android.sm"

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 764
    .local v4, "launchIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isEnabledSmartManager()Z

    move-result v9

    if-nez v9, :cond_1

    if-nez v4, :cond_1

    .line 766
    const-string v9, "true"

    const-string v10, "sys.config.spcm_db_enable"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 767
    .local v6, "spcmDbEnabled":Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 768
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_0

    move v3, v7

    .line 771
    .local v3, "isAppOptUI":Z
    :goto_0
    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    .line 775
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isAppOptUI":Z
    .end local v6    # "spcmDbEnabled":Z
    :goto_1
    return v7

    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v6    # "spcmDbEnabled":Z
    :cond_0
    move v3, v8

    .line 770
    goto :goto_0

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "spcmDbEnabled":Z
    :cond_1
    move v7, v8

    .line 775
    goto :goto_1
.end method

.method public static isAutoAirViewSupported()Z
    .locals 2

    .prologue
    .line 3804
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3806
    const/4 v0, 0x1

    .line 3808
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAveaSIMValid(Landroid/content/Context;)Z
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 846
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 847
    .local v3, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 848
    .local v1, "isSimPresent":Z
    const/4 v2, 0x0

    .line 849
    .local v2, "isSimValid":Z
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 851
    .local v4, "simSlotCount":I
    const/4 v5, 0x0

    .local v5, "slotId":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 852
    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 853
    const/4 v1, 0x1

    .line 851
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 857
    :cond_1
    if-eqz v1, :cond_2

    .line 858
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 860
    const-string v6, "28603"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 861
    const/4 v2, 0x1

    .line 866
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method public static isBandwidthControlEnabled()Z
    .locals 3

    .prologue
    .line 3074
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 3077
    .local v1, "netManager":Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3079
    :goto_0
    return v2

    .line 3078
    :catch_0
    move-exception v0

    .line 3079
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isCTCSlot1(I)Z
    .locals 1
    .param p0, "mPhoneId"    # I

    .prologue
    .line 912
    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    const/4 v0, 0x1

    .line 915
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaCMCCModel()Z
    .locals 2

    .prologue
    .line 3372
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3373
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isChinaCTCModel()Z
    .locals 2

    .prologue
    .line 3380
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3381
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isChinaHKTWLocale(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3401
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3402
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 3403
    .local v2, "language":Ljava/lang/String;
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 3404
    .local v1, "country":Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HK"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3405
    :cond_0
    const/4 v3, 0x1

    .line 3407
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isChinaHKTWModel()Z
    .locals 2

    .prologue
    .line 3396
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3397
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaModel()Z
    .locals 3

    .prologue
    .line 3354
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3355
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "CHZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CHINA"

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaOpen()Z
    .locals 2

    .prologue
    .line 3364
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3365
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 6199
    if-nez p0, :cond_1

    .line 6206
    :cond_0
    :goto_0
    return v1

    .line 6202
    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p0, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 6203
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6204
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isCoverVerified(Landroid/content/Context;)Z
    .locals 8
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 5705
    const/4 v0, 0x0

    .line 5706
    .local v0, "attached":Z
    const/4 v4, 0x2

    .line 5708
    .local v4, "type":I
    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 5709
    .local v1, "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    if-eqz v1, :cond_0

    .line 5710
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v3

    .line 5711
    .local v3, "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v3, :cond_2

    .line 5712
    iget-boolean v0, v3, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 5713
    invoke-virtual {v3}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 5720
    .end local v1    # "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    .end local v3    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    :goto_0
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cover attached : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5721
    if-eqz v0, :cond_1

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    .line 5722
    :cond_1
    const/4 v5, 0x0

    .line 5723
    :goto_1
    return v5

    .line 5715
    .restart local v1    # "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    .restart local v3    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_2
    :try_start_1
    const-string v5, "Utils"

    const-string v6, "cover getTypeOfCover ScoverState is null"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5717
    .end local v1    # "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    .end local v3    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :catch_0
    move-exception v2

    .line 5718
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0

    .line 5723
    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static isCpaOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 7393
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kddi_cpa_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 7395
    .local v0, "bIsCpaOn":Z
    :cond_0
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCpaOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7396
    return v0
.end method

.method public static isDCMhome(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3527
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3528
    const/4 v0, 0x0

    .line 3531
    :goto_0
    return v0

    :cond_0
    const-string v0, "com.nttdocomo.android.dhome"

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->isPreffered(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isDashboardTab()Z
    .locals 2

    .prologue
    .line 4919
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4920
    :cond_0
    const/4 v0, 0x1

    .line 4922
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDataCompressionEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7862
    if-nez p0, :cond_0

    .line 7865
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "opera_max_china_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isDefaultBrowser(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2952
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2953
    .local v0, "defaultBrowser":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isDisasterSafetyModel()Z
    .locals 2

    .prologue
    .line 3332
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3333
    .local v0, "product_name":Ljava/lang/String;
    const-string v1, "kactiveltekx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3334
    const/4 v1, 0x1

    .line 3336
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDocomoSettingsDisabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 3535
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3537
    .local v1, "packMgr":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_1

    .line 3538
    :try_start_0
    const-string v3, "com.nttdocomo.android.docomoset"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3540
    const-string v3, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const-string v3, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 3542
    :cond_0
    const-string v3, "SETTING_UTILS"

    const-string v4, "docomoset is Disabled!!"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3549
    :goto_0
    return v2

    .line 3546
    :catch_0
    move-exception v0

    .line 3547
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SETTING_UTILS"

    const-string v3, "docomoset is not found"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDomesticKTTModel()Z
    .locals 2

    .prologue
    .line 3312
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3313
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDomesticLGTModel()Z
    .locals 2

    .prologue
    .line 3317
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3318
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDomesticModel()Z
    .locals 1

    .prologue
    .line 3303
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticWIFIModel()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDomesticOPENModel()Z
    .locals 2

    .prologue
    .line 3327
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3328
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isDomesticSKTModel()Z
    .locals 2

    .prologue
    .line 3307
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3308
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDomesticWIFIModel()Z
    .locals 2

    .prologue
    .line 3322
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3323
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDualFolderType(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3828
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDuosModel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filter"    # Ljava/lang/String;

    .prologue
    .line 881
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CDMA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    const/4 v0, 0x1

    .line 886
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEasyModeStatus(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x1

    .line 3933
    const-string v2, "easy_mode_switch"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3935
    .local v0, "state":I
    if-nez v0, :cond_0

    .line 3938
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEmergencyTableSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 7649
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_DisableEmergencyGroup"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7652
    const/4 v0, 0x1

    .line 7654
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableApnList(Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceGroup;I)Z
    .locals 6
    .param p0, "root"    # Landroid/preference/PreferenceGroup;
    .param p1, "apnList"    # Landroid/preference/PreferenceGroup;
    .param p2, "mSimSlot"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 7255
    const/4 v1, 0x1

    .line 7257
    .local v1, "ret":Z
    if-nez p2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v5, v2, :cond_0

    .line 7259
    const-string v2, "ApnSettings"

    const-string v3, "fillList SIMSLOT1 Not Ready"

    invoke-static {v2, v3}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7260
    const/4 v1, 0x0

    .line 7271
    :goto_0
    return v1

    .line 7261
    :cond_0
    if-ne p2, v4, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v5, v2, :cond_1

    .line 7263
    const-string v2, "ApnSettings"

    const-string v3, "fillList SIMSLOT2 Not Ready"

    invoke-static {v2, v3}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7264
    const/4 v1, 0x0

    goto :goto_0

    .line 7266
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->isEnabled()Z

    move-result v0

    .line 7267
    .local v0, "bEnabled":Z
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7268
    move v1, v0

    goto :goto_0
.end method

.method public static isEnableIntensity(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 980
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 981
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEnabledAdd(Landroid/content/Context;Landroid/content/Intent;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "tIntent"    # Landroid/content/Intent;
    .param p2, "apnList"    # Landroid/preference/PreferenceGroup;
    .param p3, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 7275
    const/4 v0, 0x1

    .line 7276
    .local v0, "ret":Z
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7277
    invoke-static {p1}, Lcom/android/settings/Utils;->isVzwEditable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7278
    invoke-static {p3}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7279
    const/4 v0, 0x0

    .line 7291
    :cond_0
    :goto_0
    return v0

    .line 7280
    :cond_1
    invoke-static {p0}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7281
    const/4 v0, 0x0

    goto :goto_0

    .line 7284
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7285
    invoke-static {p1}, Lcom/android/settings/Utils;->isSprEditable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7286
    invoke-static {p3}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7287
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3986
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 3988
    .local v0, "enable":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 3989
    :cond_0
    const-string v3, "SETTING_UTILS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is diabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    .end local v0    # "enable":I
    :goto_0
    return v2

    .line 3992
    .restart local v0    # "enable":I
    :cond_1
    const-string v3, "SETTING_UTILS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3993
    const/4 v2, 0x1

    goto :goto_0

    .line 3995
    .end local v0    # "enable":I
    :catch_0
    move-exception v1

    .line 3996
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "SETTING_UTILS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isEnabledRestore(Landroid/content/Context;Landroid/content/Intent;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tIntent"    # Landroid/content/Intent;
    .param p2, "apnList"    # Landroid/preference/PreferenceGroup;
    .param p3, "mccmnc"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 7295
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 7309
    :cond_0
    :goto_0
    return v2

    .line 7298
    :cond_1
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 7299
    .local v1, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ne v3, v2, :cond_4

    move v0, v2

    .line 7300
    .local v0, "isEmptyApnlist":Z
    :goto_1
    const/4 v2, 0x1

    .line 7301
    .local v2, "ret":Z
    if-eqz v0, :cond_2

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-static {p3}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7302
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 7299
    .end local v0    # "isEmptyApnlist":Z
    .end local v2    # "ret":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 7303
    .restart local v0    # "isEmptyApnlist":Z
    .restart local v2    # "ret":Z
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p3}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7304
    const/4 v2, 0x0

    goto :goto_0

    .line 7305
    :cond_6
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 7307
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEnabledSmartManager()Z
    .locals 4

    .prologue
    .line 3960
    :try_start_0
    const-string v1, "0"

    const-string v2, "persist.sys.sm_mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 3961
    const/4 v1, 0x0

    .line 3965
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 3962
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 3963
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3965
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isEnabledUltraPowerSaving(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 3943
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3946
    :cond_0
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 3947
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    if-nez v0, :cond_2

    .line 3950
    .end local v0    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_1
    :goto_0
    return v1

    .line 3948
    .restart local v0    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    goto :goto_0
.end method

.method public static isExceptionalUSIM()Z
    .locals 4

    .prologue
    .line 927
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "imsi":Ljava/lang/String;
    const-string v1, "LGT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "3"

    const-string v2, "ril.simtype"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    const-string v0, "45006"

    .line 934
    :cond_0
    const-string v1, "45005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SKT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const-string v1, "45006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "LGT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "45008"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "KTT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 937
    :cond_3
    const/4 v1, 0x0

    .line 939
    :goto_0
    return v1

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isExhibitionMode()Z
    .locals 2

    .prologue
    .line 6482
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6483
    const/4 v0, 0x1

    .line 6485
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExistCoverNotePackage(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3971
    sget-object v1, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 3973
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.daynote"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3975
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3981
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 3976
    :catch_0
    move-exception v0

    .line 3977
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isFactoryBinary()Z
    .locals 3

    .prologue
    .line 7903
    const-string v0, "factory"

    const-string v1, "ro.factory.factory_binary"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFavorite(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    const/4 v4, 0x0

    .line 5289
    const/4 v8, 0x0

    .line 5290
    .local v8, "ret":Z
    if-eqz p0, :cond_2

    .line 5291
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    .line 5292
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "key"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5294
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v9, v8

    .line 5300
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "ret":Z
    .local v9, "ret":I
    :goto_0
    return v9

    .line 5295
    .end local v9    # "ret":I
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "ret":Z
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5296
    const/4 v8, 0x1

    .line 5298
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "key":Ljava/lang/String;
    :cond_2
    move v9, v8

    .line 5300
    .restart local v9    # "ret":I
    goto :goto_0
.end method

.method public static isFolderModel(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3561
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFullScreenSupported()Z
    .locals 1

    .prologue
    .line 4466
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    return v0
.end method

.method public static isGEDTalkBackEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1101
    const/4 v1, 0x0

    .line 1102
    .local v1, "talkbackEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1106
    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 1109
    :cond_0
    return v1
.end method

.method public static isGuestMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4285
    const-string v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 4286
    .local v1, "mUm":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 4287
    .local v0, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    return v2
.end method

.method public static isGuestUser(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 7432
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 7433
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 7434
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7435
    const/4 v1, 0x1

    .line 7438
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHideApn([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "hideApnList"    # [Ljava/lang/String;
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 6965
    const/4 v4, 0x0

    .line 6966
    .local v4, "ret":Z
    if-nez p0, :cond_0

    move v5, v4

    .line 6975
    .end local v4    # "ret":Z
    .local v5, "ret":I
    :goto_0
    return v5

    .line 6968
    .end local v5    # "ret":I
    .restart local v4    # "ret":Z
    :cond_0
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 6969
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6970
    const-string v6, "ApnSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide apn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 6971
    const/4 v4, 0x1

    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    move v5, v4

    .line 6975
    .restart local v5    # "ret":I
    goto :goto_0

    .line 6968
    .end local v5    # "ret":I
    .restart local v2    # "item":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isHideMobileNetworks(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 870
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 871
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v1, "Settings_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "for mobile_networks -> phoneType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-static {p0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 875
    :cond_1
    const/4 v1, 0x1

    .line 877
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInLockTaskMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 7789
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 7790
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7791
    const/4 v1, 0x1

    .line 7793
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInstalledAnySpellCheckerPakcage(Landroid/content/Context;)Z
    .locals 10
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 6175
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 6176
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.service.textservice.SpellCheckerService"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x80

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    .line 6178
    .local v5, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 6179
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 6180
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 6181
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 6182
    .local v6, "si":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6183
    .local v1, "compName":Landroid/content/ComponentName;
    const-string v7, "android.permission.BIND_TEXT_SERVICE"

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 6184
    const-string v7, "InputMethodAndLanguageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping text service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": it does not require the permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "android.permission.BIND_TEXT_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6179
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6189
    :cond_1
    const-string v7, "com.sec.android.inputmethod"

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 6192
    const/4 v7, 0x1

    .line 6194
    .end local v1    # "compName":Landroid/content/ComponentName;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    :goto_1
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1364
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1365
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return v2

    .line 1366
    :cond_1
    const/high16 v3, 0x10000

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1367
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1356
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1357
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1

    .line 1360
    :cond_0
    :goto_0
    return v3

    .line 1358
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1359
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1360
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isJapanDCMModel()Z
    .locals 2

    .prologue
    .line 3453
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3454
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isJapanKDIModel()Z
    .locals 2

    .prologue
    .line 3458
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3459
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isJapanModel()Z
    .locals 2

    .prologue
    .line 3448
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3449
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XJP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isJapanModelWithoutSecMessage()Z
    .locals 2

    .prologue
    .line 3468
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3469
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isJapanSBMModel()Z
    .locals 2

    .prologue
    .line 3463
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3464
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "SBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isKnoxContainer(Landroid/os/UserManager;)Z
    .locals 2
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 2567
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2568
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v1

    return v1
.end method

.method public static isKnoxCustomSettingsTileHidden(II)Z
    .locals 2
    .param p0, "tileId"    # I
    .param p1, "knoxCustomSettingsState"    # I

    .prologue
    .line 5462
    const/4 v0, 0x0

    .line 5463
    .local v0, "hidden":Z
    if-eqz p1, :cond_0

    .line 5464
    sparse-switch p0, :sswitch_data_0

    .line 5528
    :cond_0
    :goto_0
    return v0

    .line 5466
    :sswitch_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 5467
    const/4 v0, 0x1

    goto :goto_0

    .line 5471
    :sswitch_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 5472
    const/4 v0, 0x1

    goto :goto_0

    .line 5476
    :sswitch_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 5477
    const/4 v0, 0x1

    goto :goto_0

    .line 5481
    :sswitch_3
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_0

    .line 5482
    const/4 v0, 0x1

    goto :goto_0

    .line 5486
    :sswitch_4
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    .line 5487
    const/4 v0, 0x1

    goto :goto_0

    .line 5491
    :sswitch_5
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_0

    .line 5492
    const/4 v0, 0x1

    goto :goto_0

    .line 5496
    :sswitch_6
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_0

    .line 5497
    const/4 v0, 0x1

    goto :goto_0

    .line 5501
    :sswitch_7
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_0

    .line 5502
    const/4 v0, 0x1

    goto :goto_0

    .line 5506
    :sswitch_8
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_0

    .line 5507
    const/4 v0, 0x1

    goto :goto_0

    .line 5514
    :sswitch_9
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_0

    .line 5515
    const/4 v0, 0x1

    goto :goto_0

    .line 5519
    :sswitch_a
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_0

    .line 5520
    const/4 v0, 0x1

    goto :goto_0

    .line 5464
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d064c -> :sswitch_0
        0x7f0d0651 -> :sswitch_1
        0x7f0d0652 -> :sswitch_2
        0x7f0d0663 -> :sswitch_9
        0x7f0d066d -> :sswitch_3
        0x7f0d0676 -> :sswitch_9
        0x7f0d0677 -> :sswitch_9
        0x7f0d0678 -> :sswitch_9
        0x7f0d0679 -> :sswitch_7
        0x7f0d0685 -> :sswitch_4
        0x7f0d0689 -> :sswitch_a
        0x7f0d068e -> :sswitch_6
        0x7f0d0692 -> :sswitch_5
        0x7f0d0699 -> :sswitch_8
    .end sparse-switch
.end method

.method public static isLDUModel()Z
    .locals 2

    .prologue
    .line 3414
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3415
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "PAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLRASimInserted()Z
    .locals 7

    .prologue
    .line 6633
    const/4 v2, 0x0

    .line 6634
    .local v2, "isLraSimEnable":Z
    const-string v4, "gsm.apn.sim.operator.numeric"

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6635
    .local v0, "SimNumericLRA":Ljava/lang/String;
    sget-object v4, Lcom/android/settings/Utils;->LRA_CARRIERS:[Ljava/lang/String;

    array-length v3, v4

    .line 6636
    .local v3, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 6637
    sget-object v4, Lcom/android/settings/Utils;->LRA_CARRIERS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6638
    const/4 v2, 0x1

    .line 6643
    :cond_0
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLRASimInserted = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6644
    return v2

    .line 6636
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isLightTheme(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 672
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 673
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "lightTheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return v2

    .line 677
    :cond_1
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    .line 678
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "lightTheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    :cond_2
    const-string v0, "Utils"

    const-string v1, "returning true by default for is light theme"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isLocaleRTL()Z
    .locals 1

    .prologue
    .line 693
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static isLocaleRTL(Ljava/util/Locale;)Z
    .locals 9
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 704
    const-string v0, "ar"

    .line 706
    .local v0, "ISO639_ARABIC":Ljava/lang/String;
    const-string v3, "fa"

    .line 708
    .local v3, "ISO639_PERSIAN":Ljava/lang/String;
    const-string v1, "he"

    .line 711
    .local v1, "ISO639_HEBREW":Ljava/lang/String;
    const-string v2, "iw"

    .line 713
    .local v2, "ISO639_HEBREW_FORMER":Ljava/lang/String;
    const-string v6, "ji"

    .line 715
    .local v6, "ISO639_YIDDISH_FORMER":Ljava/lang/String;
    const-string v4, "ur"

    .line 717
    .local v4, "ISO639_URDU":Ljava/lang/String;
    const-string v5, "yi"

    .line 718
    .local v5, "ISO639_YIDDISH":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 719
    .local v7, "iso639":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isLockMenuDisabledByEdm(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6428
    new-array v1, v2, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v1, v3

    .line 6430
    .local v1, "selectionArgs":[Ljava/lang/String;
    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v5, "isLockScreenEnabled"

    invoke-static {p0, v4, v5, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 6433
    .local v0, "isLockScreenEnabled":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_0

    .line 6438
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isLowStorage(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2911
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 2912
    .local v0, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isManagedProfile(Landroid/os/UserManager;)Z
    .locals 2
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 2559
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2560
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    return v1
.end method

.method public static isMetroPCS()Z
    .locals 3

    .prologue
    .line 4582
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4583
    .local v0, "product_name":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "MetroPCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mtr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobileKeyboardConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 7442
    const/4 v1, 0x0

    .line 7444
    .local v1, "isConnected":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7445
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7447
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 7448
    const/4 v1, 0x1

    .line 7454
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return v1

    .line 7450
    .restart local v0    # "conf":Landroid/content/res/Configuration;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobileNetworkEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 4309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    .prologue
    .line 618
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isMultisimModel()Z
    .locals 1

    .prologue
    .line 908
    sget-boolean v0, Lcom/android/settings/Utils;->isMultiSim:Z

    return v0
.end method

.method public static isNoSIM(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 958
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v0

    .line 960
    .local v0, "enabledSimCnt":I
    if-lez v0, :cond_0

    .line 961
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    .line 963
    .local v1, "simSlotCnt":I
    const/4 v3, 0x0

    .local v3, "slotId":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 964
    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimState(I)I

    move-result v2

    .line 965
    .local v2, "simState":I
    invoke-static {p0, v3}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    if-eq v2, v4, :cond_1

    .line 967
    const/4 v4, 0x0

    .line 971
    .end local v1    # "simSlotCnt":I
    .end local v2    # "simState":I
    .end local v3    # "slotId":I
    :cond_0
    return v4

    .line 963
    .restart local v1    # "simSlotCnt":I
    .restart local v2    # "simState":I
    .restart local v3    # "slotId":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static isNonVerizonSIM(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 4647
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 4648
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 4649
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 4650
    .local v0, "operator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4658
    .end local v0    # "operator":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 4653
    .restart local v0    # "operator":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4654
    sget-object v3, Lcom/android/settings/Utils;->MCC_MNC_LIST:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4655
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNotSupportOpenWifiCalling(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 817
    const/4 v3, 0x0

    .line 819
    .local v3, "mIMSInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    const/4 v2, 0x0

    .line 820
    .local v2, "isSuportVoWifi":Z
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    .line 822
    .local v4, "salesCode":Ljava/lang/String;
    const/4 v5, 0x7

    :try_start_0
    invoke-static {v5, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-object v3, v0

    .line 824
    if-eqz v3, :cond_0

    .line 825
    invoke-interface {v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isVoWiFiSupported()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 830
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_SupportWiFiCallingMenu"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_2

    .line 832
    :cond_1
    const/4 v5, 0x1

    .line 834
    :goto_1
    return v5

    .line 827
    :catch_0
    move-exception v1

    .line 828
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 834
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static isOemUnlockEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2720
    const-string v1, "persistent_data_block"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 2722
    .local v0, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    return v1
.end method

.method public static isOnCall()Z
    .locals 6

    .prologue
    .line 4870
    const/4 v2, 0x0

    .line 4871
    .local v2, "isOnCall":Z
    const/4 v1, 0x0

    .line 4874
    .local v1, "isAletingCall":Z
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 4876
    .local v3, "phoneServ":Lcom/android/internal/telephony/ITelephony;
    if-nez v3, :cond_1

    .line 4877
    const-string v4, "Utils"

    const-string v5, "Null Pointer Exception set isOnCall as false"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4878
    const/4 v2, 0x0

    .line 4902
    .end local v3    # "phoneServ":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 4880
    .restart local v3    # "phoneServ":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const-string v4, "com.android.settings"

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v2

    .line 4881
    const-string v4, "com.android.settings"

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4896
    .end local v3    # "phoneServ":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4898
    .local v0, "e1":Landroid/os/RemoteException;
    const/4 v2, 0x0

    .line 4899
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4902
    .end local v0    # "e1":Landroid/os/RemoteException;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isPHNModel()Z
    .locals 2

    .prologue
    .line 3435
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3436
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "PHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3139
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3140
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 3141
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3142
    .local v1, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3143
    const/4 v4, 0x1

    .line 3145
    .end local v1    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public static isPenAirViewSupported()Z
    .locals 2

    .prologue
    .line 3813
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3814
    const/4 v0, 0x1

    .line 3816
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPreffered(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3554
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3555
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3556
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v0, p0}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 3557
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isPreloadedThemeSupported()Z
    .locals 2

    .prologue
    .line 7763
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7764
    .local v0, "product_name":Ljava/lang/String;
    const-string v1, "j2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7765
    const/4 v1, 0x1

    .line 7766
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z
    .locals 3
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "otherUser"    # Landroid/os/UserHandle;

    .prologue
    const/4 v0, 0x0

    .line 2710
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2711
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v1, 0xc0

    .line 660
    .local v0, "layout_dir":I
    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRestrictedProfile(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4304
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 4305
    .local v0, "mUm":Landroid/os/UserManager;
    const-string v1, "no_modify_accounts"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isRoaming(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 952
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 953
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/Utils;->mRoamingState:Z

    .line 954
    sget-boolean v1, Lcom/android/settings/Utils;->mRoamingState:Z

    return v1
.end method

.method public static isSPRSimInserted(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 6612
    const/4 v0, 0x0

    .line 6613
    .local v0, "isSprSimEnable":Z
    const-string v1, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "310120"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6614
    const/4 v0, 0x1

    .line 6620
    :cond_0
    :goto_0
    return v0

    .line 6615
    :cond_1
    const-string v1, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "311870"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6616
    const/4 v0, 0x1

    goto :goto_0

    .line 6617
    :cond_2
    const-string v1, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "311490"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6618
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isShopDemo(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3419
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "shopdemo"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isSignatureMatch(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 7803
    const/4 v7, 0x0

    .line 7805
    .local v7, "signatureMatch":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 7806
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 7807
    .local v8, "signatures":[Landroid/content/pm/Signature;
    if-eqz v8, :cond_2

    .line 7808
    move-object v0, v8

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 7809
    .local v6, "signature":Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v9, Lcom/android/settings/Utils;->SIGNATURES:[Landroid/content/pm/Signature;

    array-length v9, v9

    if-ge v2, v9, :cond_0

    .line 7810
    sget-object v9, Lcom/android/settings/Utils;->SIGNATURES:[Landroid/content/pm/Signature;

    aget-object v9, v9, v2

    invoke-virtual {v9, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    .line 7811
    const/4 v7, 0x1

    .line 7808
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7809
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7817
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "signature":Landroid/content/pm/Signature;
    .end local v8    # "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 7818
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "Settings_Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t find my package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7819
    const/4 v7, 0x0

    .line 7821
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    return v7
.end method

.method public static isSimReady()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x0

    .line 4448
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4449
    const/4 v0, 0x0

    .line 4450
    .local v0, "SLOT1":I
    const/4 v1, 0x1

    .line 4451
    .local v1, "SLOT2":I
    const/4 v4, 0x0

    .line 4452
    .local v4, "currentstate1":I
    const/4 v5, 0x0

    .line 4453
    .local v5, "currentstate2":I
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9"

    invoke-static {v7, v0, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4455
    .local v2, "cardStatus1":Ljava/lang/String;
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9"

    invoke-static {v7, v1, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4457
    .local v3, "cardStatus2":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4458
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4460
    if-eq v4, v9, :cond_0

    if-ne v5, v9, :cond_1

    :cond_0
    const/4 v6, 0x1

    .line 4462
    :cond_1
    return v6
.end method

.method public static isSimplifiedAboutDevice2015()Z
    .locals 1

    .prologue
    .line 5898
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5899
    const/4 v0, 0x0

    .line 5901
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSmsCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 634
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 636
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSprEditable(Landroid/content/Intent;)Z
    .locals 6
    .param p0, "tIntent"    # Landroid/content/Intent;

    .prologue
    .line 6707
    const/4 v0, 0x0

    .line 6708
    .local v0, "isSprEditable":Z
    const-string v3, "keyString"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6709
    .local v2, "strNameSpr":Ljava/lang/String;
    const-string v4, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strNameSpr = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_1

    const-string v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 6711
    const-string v3, "hidden"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6712
    const/4 v0, 0x1

    .line 6717
    :goto_1
    const-string v3, "LTE_TEST"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6719
    .local v1, "strFromHidden":Ljava/lang/String;
    const-string v3, "editable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6720
    const/4 v0, 0x1

    .line 6722
    :cond_0
    return v0

    .end local v1    # "strFromHidden":Ljava/lang/String;
    :cond_1
    move-object v3, v2

    .line 6709
    goto :goto_0

    .line 6714
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isSprModel()Z
    .locals 2

    .prologue
    .line 739
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isStalkBackEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1085
    const/4 v1, 0x0

    .line 1086
    .local v1, "samsungTalkbackEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1090
    const-string v2, "(?i).*com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 1093
    :cond_0
    return v1
.end method

.method public static isStatusL51menutree()Z
    .locals 2

    .prologue
    .line 5923
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5924
    const/4 v0, 0x1

    .line 5925
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSuportSPcode()Z
    .locals 3

    .prologue
    .line 6791
    const/4 v0, 0x0

    .line 6792
    .local v0, "result":Z
    sget-object v1, Lcom/android/settings/Utils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/Utils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v2, "-CAN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6794
    const/4 v0, 0x1

    .line 6796
    :cond_0
    return v0
.end method

.method public static isSupport3LM()Z
    .locals 1

    .prologue
    .line 7419
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportAddtionalFeedback()Z
    .locals 2

    .prologue
    .line 6161
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FW_SPEN_HAPTIC_SETTING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportAutoDial()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3340
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3341
    .local v0, "product_name":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3342
    const-string v2, "novellteskt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3347
    :cond_0
    :goto_0
    return v1

    .line 3345
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSupportAutoVerfiyTraffic()Z
    .locals 1

    .prologue
    .line 7848
    const-string v0, "trafficmanager_auto"

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportCHNEnhancedFeature(Ljava/lang/String;)Z
    .locals 3
    .param p0, "featureName"    # Ljava/lang/String;

    .prologue
    .line 7839
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7840
    .local v0, "features":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportCHNSmartManager()Z
    .locals 1

    .prologue
    .line 7845
    const-string v0, "trafficmanager"

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportChameleonRoaming()Z
    .locals 4

    .prologue
    .line 796
    const-string v1, "persist.sys.roampref_menu"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "value":Ljava/lang/String;
    const-string v1, "Settings_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roampref_menu : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    const/4 v1, 0x1

    .line 803
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportDataCompression()Z
    .locals 1

    .prologue
    .line 7858
    const-string v0, "data_compression"

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportEPDG()Z
    .locals 3

    .prologue
    .line 4392
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WFC20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFastCableCharger()Z
    .locals 2

    .prologue
    .line 5661
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_HV"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5662
    const/4 v0, 0x1

    .line 5663
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportFastWirelessCharger()Z
    .locals 2

    .prologue
    .line 5655
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5656
    const/4 v0, 0x1

    .line 5657
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportGlobalRoamingLRA()Z
    .locals 3

    .prologue
    .line 6800
    const/4 v0, 0x0

    .line 6801
    .local v0, "result":Z
    sget-object v1, Lcom/android/settings/Utils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/Utils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v2, "-LRA-GLB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6803
    const/4 v0, 0x1

    .line 6805
    :cond_0
    return v0
.end method

.method public static isSupportHelpMenu(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3635
    const/4 v1, 0x0

    .line 3636
    .local v1, "helpMenuCheck":Z
    const/4 v2, 0x0

    .line 3637
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_0

    .line 3647
    :goto_0
    return v4

    .line 3641
    :cond_0
    :try_start_0
    const-string v5, "com.samsung.helphub"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 3642
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.helphub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3647
    :goto_1
    if-ne v1, v3, :cond_1

    if-eqz v2, :cond_1

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    :goto_2
    move v4, v3

    goto :goto_0

    .line 3643
    :catch_0
    move-exception v0

    .line 3644
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    move v3, v4

    .line 3647
    goto :goto_2
.end method

.method public static isSupportKKLookChart()Z
    .locals 1

    .prologue
    .line 4806
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4807
    const/4 v0, 0x1

    .line 4809
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKorRoamingConcept(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 944
    const-string v1, "oversea"

    const-string v2, "ril.currentplmn"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 945
    .local v0, "isKorRoaming":Z
    invoke-static {p0}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    const/4 v0, 0x1

    .line 948
    :cond_0
    return v0
.end method

.method public static isSupportLMM(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4832
    invoke-static {p0}, Lcom/android/settings/Utils;->checkReactiveService(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4833
    const-string v0, "Utils"

    const-string v1, "isSupportLMM : TRUE"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4834
    const/4 v0, 0x1

    .line 4837
    :goto_0
    return v0

    .line 4836
    :cond_0
    const-string v0, "Utils"

    const-string v1, "isSupportLMM : FALSE"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4837
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportLTERoaming()Z
    .locals 1

    .prologue
    .line 922
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportLightSensor(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3691
    const/4 v1, 0x0

    .line 3692
    .local v1, "isSupport":Z
    const-string v5, "sensor"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 3693
    .local v3, "sensorMgr":Landroid/hardware/SensorManager;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 3695
    .local v2, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 3696
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 3698
    .local v4, "sensorType":I
    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 3699
    const/4 v1, 0x1

    .line 3695
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3703
    .end local v4    # "sensorType":I
    :cond_1
    return v1
.end method

.method public static isSupportLockAppShortcut()Z
    .locals 3

    .prologue
    .line 7541
    const/4 v1, 0x0

    .line 7543
    .local v1, "state":Z
    const-string v2, "ro.build.scafe.version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7544
    .local v0, "scafe_version":Ljava/lang/String;
    const-string v2, "2016A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "2015A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7545
    :cond_0
    const/4 v1, 0x1

    .line 7548
    :cond_1
    return v1
.end method

.method public static isSupportMotion(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 3718
    const-string v1, "motion_recognition"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 3720
    .local v0, "MotionManager":Lcom/samsung/android/motion/MotionRecognitionManager;
    invoke-virtual {v0, p1}, Lcom/samsung/android/motion/MotionRecognitionManager;->isAvailable(I)Z

    move-result v1

    return v1
.end method

.method public static isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3724
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    :cond_1
    move v0, v1

    .line 3765
    :goto_1
    return v0

    .line 3724
    :sswitch_0
    const-string v4, "pick_up_to_call_out_switch"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "pick_up_switch"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v4, "merged_mute_or_pause_switch"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "palm_swipe_switch"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "multi_window_setting_switch"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 3727
    :pswitch_0
    const/16 v2, 0x400

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "grande"

    const-string v3, "ro.build.scafe.size"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 3735
    :pswitch_1
    invoke-static {p0, v3}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "grande"

    const-string v3, "ro.build.scafe.size"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 3743
    :pswitch_2
    const/high16 v2, 0x200000

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    const-string v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "philippe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "royce"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 3751
    :pswitch_3
    const/high16 v2, 0x400000

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "philippe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "royce"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 3760
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow.styletransition"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 3724
    :sswitch_data_0
    .sparse-switch
        -0x658b2c7a -> :sswitch_2
        0x238696ba -> :sswitch_1
        0x3739fa88 -> :sswitch_0
        0x647295ac -> :sswitch_4
        0x7ca407c6 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static isSupportMptcp()Z
    .locals 2

    .prologue
    .line 839
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportMptcpMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    const/4 v0, 0x1

    .line 842
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportOfflineHelpMenu(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3672
    const/4 v1, 0x0

    .line 3673
    .local v1, "helpMenuCheck":Z
    const/4 v2, 0x0

    .line 3676
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v5, "com.samsung.helphub"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 3677
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.helphub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 3686
    :goto_0
    const-string v5, "Settings_Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSupportOfflineHelpMenu | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    if-ne v1, v3, :cond_0

    if-eqz v2, :cond_0

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    :goto_1
    return v3

    .line 3678
    :catch_0
    move-exception v0

    .line 3679
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 3680
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3681
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 3682
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    .line 3683
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    move v3, v4

    .line 3687
    goto :goto_1
.end method

.method public static isSupportOnlineHelpMenu(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3652
    const/4 v1, 0x0

    .line 3653
    .local v1, "helpMenuCheck":Z
    const/4 v2, 0x0

    .line 3656
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v5, "com.samsung.helphub"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 3657
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.helphub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 3666
    :goto_0
    const-string v5, "Settings_Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSupportOnlineHelpMenu | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    if-ne v1, v3, :cond_0

    if-eqz v2, :cond_0

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    :goto_1
    return v3

    .line 3658
    :catch_0
    move-exception v0

    .line 3659
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 3660
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3661
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 3662
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    .line 3663
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    move v3, v4

    .line 3667
    goto :goto_1
.end method

.method public static isSupportPSM()Z
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x1

    .line 785
    .local v0, "result":Z
    return v0
.end method

.method public static isSupportPatternBackupPin()Z
    .locals 1

    .prologue
    .line 6490
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPenUsp10(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3822
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    .line 3823
    .local v0, "uspLevel":I
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportPenUsp10() uspLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportPersonalAutoBrightness()Z
    .locals 1

    .prologue
    .line 7799
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportPowerKey()Z
    .locals 2

    .prologue
    .line 7604
    const/4 v0, 0x1

    .line 7606
    .local v0, "isSupportPowerKey":Z
    const/16 v1, 0x1a

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7607
    const/4 v0, 0x0

    .line 7609
    :cond_0
    return v0
.end method

.method public static isSupportPrivacyAndSafetyMenu(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 6496
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_0

    .line 6497
    const-string v0, "TAG"

    const-string v1, "isSupportPrivacyAndSafetyMenu PRIVATE_MODE feature true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6498
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPrivateBoxInSettings(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 7553
    const/4 v1, 0x0

    .line 7555
    .local v1, "state":Z
    const-string v0, "com.samsung.android.privatebox"

    .line 7556
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7557
    const/4 v1, 0x1

    .line 7560
    :cond_0
    return v1
.end method

.method public static isSupportSmartBonding()Z
    .locals 2

    .prologue
    .line 807
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTFGDisableSmartBonding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    :cond_0
    const/4 v0, 0x0

    .line 813
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportVolteSettings(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 4614
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4617
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/android/settings/Utils;->isVolteCallOnCommonIms:Z

    if-eqz v1, :cond_2

    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportWeatherMenu(Landroid/content/Context;)Z
    .locals 6
    .param p0, "mcontext"    # Landroid/content/Context;

    .prologue
    .line 7469
    const/4 v2, 0x1

    .line 7471
    .local v2, "state":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_WEATHER_SUPPORT_MASS"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 7472
    .local v0, "isMassDevice":Z
    const-string v3, "ro.build.scafe.version"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7473
    .local v1, "scafe_version":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/Utils;->getDaemonVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2016"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    .line 7474
    :cond_0
    const/4 v2, 0x0

    .line 7476
    :cond_1
    return v2
.end method

.method public static isSupportWeatherStateSettings()Z
    .locals 3

    .prologue
    .line 7458
    const/4 v1, 0x0

    .line 7460
    .local v1, "state":Z
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7461
    .local v0, "productName":Ljava/lang/String;
    const-string v2, "noble"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "zen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7462
    :cond_0
    const/4 v1, 0x1

    .line 7465
    :cond_1
    return v1
.end method

.method public static isSupportedActionMemo(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 7773
    invoke-static {p0}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2791
    sget-object v2, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    if-nez v2, :cond_0

    .line 2792
    new-array v2, v1, [Landroid/content/pm/Signature;

    invoke-static {p0}, Lcom/android/settings/Utils;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v3

    aput-object v3, v2, v0

    sput-object v2, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    .line 2794
    :cond_0
    sget-object v2, Lcom/android/settings/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 2795
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    .line 2797
    :cond_1
    sget-object v2, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v2, v2, v0

    invoke-static {p1}, Lcom/android/settings/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    sget-object v2, Lcom/android/settings/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/settings/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method public static isT4RModel()Z
    .locals 2

    .prologue
    .line 3565
    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3566
    .local v0, "productName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "SmartL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3567
    const/4 v1, 0x1

    .line 3568
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTFGDisableSmartBonding()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 4358
    const-string v7, "TFG"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4387
    .local v4, "productCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 4362
    .end local v4    # "productCode":Ljava/lang/String;
    :cond_1
    const-string v7, "ril.product_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4363
    .restart local v4    # "productCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4364
    const-string v1, "/system/etc/smart_bonding_not_supported"

    .line 4365
    .local v1, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4367
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/system/etc/smart_bonding_not_supported"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4368
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 4369
    .local v5, "string":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_2

    .line 4370
    const/4 v6, 0x1

    .line 4379
    if-eqz v3, :cond_0

    .line 4380
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4381
    :catch_0
    move-exception v0

    .line 4382
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4379
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v3, :cond_0

    .line 4380
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 4381
    :catch_1
    move-exception v0

    .line 4382
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4371
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "string":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 4372
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4379
    if-eqz v2, :cond_0

    .line 4380
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 4381
    :catch_3
    move-exception v0

    .line 4382
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4373
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 4374
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4379
    if-eqz v2, :cond_0

    .line 4380
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 4381
    :catch_5
    move-exception v0

    .line 4382
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4375
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 4376
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4379
    if-eqz v2, :cond_0

    .line 4380
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_0

    .line 4381
    :catch_7
    move-exception v0

    .line 4382
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4378
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 4379
    :goto_4
    if-eqz v2, :cond_3

    .line 4380
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 4383
    :cond_3
    :goto_5
    throw v6

    .line 4381
    :catch_8
    move-exception v0

    .line 4382
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 4378
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 4375
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 4373
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 4371
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static isTPDModel()Z
    .locals 2

    .prologue
    .line 3440
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 3441
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "TPD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 645
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 646
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 650
    :goto_0
    return v0

    .line 649
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    .line 650
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 664
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 665
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 668
    :goto_0
    return v0

    .line 667
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    .line 668
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1067
    const/4 v1, 0x0

    .line 1068
    .local v1, "talkbackEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1073
    const-string v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 1077
    :cond_1
    :goto_0
    return v1

    .line 1073
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTalkBackExclusiveOptionEnabled(Landroid/content/Context;I)Landroid/os/Bundle;
    .locals 49
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "talkbackType"    # I

    .prologue
    .line 1402
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 1403
    .local v30, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    .line 1404
    .local v31, "resolver":Landroid/content/ContentResolver;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1405
    .local v9, "data":Landroid/os/Bundle;
    const/4 v15, 0x1

    .line 1406
    .local v15, "is_enabled":Z
    const/16 v24, 0x0

    .line 1408
    .local v24, "option_flag":I
    if-nez p1, :cond_16

    .line 1409
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const v45, 0x7f0e0996

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1416
    .local v10, "dialog_content":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 1417
    .local v8, "assistantmenu":I
    const/4 v14, 0x0

    .line 1418
    .local v14, "interactioncontrol":I
    const/4 v12, 0x0

    .line 1419
    .local v12, "fingerairview":I
    const/16 v28, 0x0

    .line 1420
    .local v28, "penairview":I
    const/16 v36, 0x0

    .line 1421
    .local v36, "smartscreen":I
    const/16 v21, 0x0

    .line 1422
    .local v21, "multiwindow":I
    const/4 v5, 0x0

    .line 1423
    .local v5, "allSoundOff":I
    const/16 v43, 0x0

    .line 1424
    .local v43, "writingbuddy":I
    const/16 v25, 0x0

    .line 1425
    .local v25, "palmMotion":I
    const/16 v23, 0x0

    .line 1426
    .local v23, "onehandoperation":I
    const/16 v27, 0x0

    .line 1427
    .local v27, "palmoptiontouch":I
    const/16 v26, 0x0

    .line 1428
    .local v26, "palmoptionswipe":I
    const/16 v22, 0x0

    .line 1429
    .local v22, "onehandinput":I
    const/16 v33, 0x0

    .line 1430
    .local v33, "sidesoftkey":I
    const/16 v39, 0x0

    .line 1431
    .local v39, "sounddetector":I
    const/16 v41, 0x0

    .line 1432
    .local v41, "toolbox":I
    const/4 v3, 0x0

    .line 1433
    .local v3, "airbrowser":I
    const/4 v4, 0x0

    .line 1434
    .local v4, "aircommand":I
    const/4 v13, 0x0

    .line 1435
    .local v13, "hoverZoom":I
    const/16 v32, 0x0

    .line 1436
    .local v32, "screenreader":I
    const/16 v42, 0x0

    .line 1437
    .local v42, "universalinput":I
    const/16 v40, 0x0

    .line 1438
    .local v40, "talkback":I
    const/16 v17, 0x0

    .line 1439
    .local v17, "magnifier":I
    const/16 v29, 0x0

    .line 1440
    .local v29, "peopleEdge":I
    const/4 v7, 0x0

    .line 1441
    .local v7, "appsEdge":I
    const/16 v16, 0x0

    .line 1442
    .local v16, "magnificationGesture":I
    const/4 v11, 0x0

    .line 1443
    .local v11, "edgescreen":I
    const/4 v6, 0x0

    .line 1445
    .local v6, "aod":I
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v44

    const-string v45, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual/range {v44 .. v45}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_0

    .line 1446
    add-int/lit8 v24, v24, 0x8

    .line 1447
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v44

    if-eqz v44, :cond_18

    .line 1448
    const-string v44, "air_view_master_onoff"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 1454
    :cond_0
    :goto_1
    const/16 v44, 0x2

    move/from16 v0, p1

    move/from16 v1, v44

    if-eq v0, v1, :cond_1

    .line 1455
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v44

    const-string v45, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual/range {v44 .. v45}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v44

    const-string v45, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-virtual/range {v44 .. v45}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_1

    .line 1457
    add-int/lit8 v24, v24, 0x4

    .line 1458
    const-string v44, "pen_hovering"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .line 1462
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v44

    const-string v45, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual/range {v44 .. v45}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_19

    .line 1463
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e1271

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1470
    :cond_2
    :goto_2
    const-string v44, "com.samsung.android.app.assistantmenu"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_3

    .line 1471
    add-int/lit8 v24, v24, 0x20

    .line 1472
    const-string v44, "assistant_menu"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1473
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e09bf

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1476
    :cond_3
    const-string v44, "com.samsung.android.app.accesscontrol"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_4

    .line 1477
    add-int/lit8 v24, v24, 0x40

    .line 1478
    const-string v44, "access_control_use"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 1479
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e0961

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1482
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v44

    const-string v45, "com.sec.feature.multiwindow"

    invoke-virtual/range {v44 .. v45}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_5

    .line 1483
    add-int/lit8 v24, v24, 0x1

    .line 1484
    const-string v44, "multi_window_enabled"

    const/16 v45, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 1485
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e09ca

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1488
    :cond_5
    const/16 v44, 0x2

    move/from16 v0, p1

    move/from16 v1, v44

    if-eq v0, v1, :cond_6

    .line 1489
    move/from16 v0, v24

    add-int/lit16 v0, v0, 0x200

    move/from16 v24, v0

    .line 1490
    const-string v44, "all_sound_off"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1491
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e0a24

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1492
    const-string v44, "com.samsung.android.app.sounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_1a

    .line 1493
    move/from16 v0, v24

    add-int/lit16 v0, v0, 0x800

    move/from16 v24, v0

    .line 1494
    const-string v44, "sound_detector"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    .line 1495
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e0a1c

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1504
    :cond_6
    :goto_3
    const/16 v44, 0x2

    move/from16 v0, p1

    move/from16 v1, v44

    if-eq v0, v1, :cond_9

    .line 1505
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v44

    const-string v45, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual/range {v44 .. v45}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_9

    .line 1506
    move/from16 v0, v24

    add-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    .line 1507
    const-string v44, "pen_writing_buddy"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v43

    .line 1508
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e0a30

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1511
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v44

    if-nez v44, :cond_8

    .line 1512
    const-string v44, "air_button_onoff"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_7

    const-string v44, "pen_detachment_option"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1c

    :cond_7
    const/4 v4, 0x1

    .line 1515
    :cond_8
    :goto_4
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e0a46

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1522
    :cond_9
    const-string v44, "air_motion_call_accept"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1523
    const/16 v44, 0x1

    move/from16 v0, v44

    if-ne v3, v0, :cond_a

    .line 1524
    const-string v44, "air_motion_call_accept"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1525
    new-instance v19, Landroid/content/Intent;

    const-string v44, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1526
    .local v19, "motion_changed_callaccept":Landroid/content/Intent;
    const-string v44, "isEnable"

    const/16 v45, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1527
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1530
    .end local v19    # "motion_changed_callaccept":Landroid/content/Intent;
    :cond_a
    const-string v44, "air_motion_turn"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1531
    const-string v44, "air_motion_scroll"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1533
    new-instance v20, Landroid/content/Intent;

    const-string v44, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    move-object/from16 v0, v20

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1534
    .local v20, "motion_changed_scroll":Landroid/content/Intent;
    const-string v44, "isEnable"

    const/16 v45, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1535
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1537
    new-instance v18, Landroid/content/Intent;

    const-string v44, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    move-object/from16 v0, v18

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1538
    .local v18, "motion_changed_browse":Landroid/content/Intent;
    const-string v44, "isEnable"

    const/16 v45, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1539
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1547
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v44

    const-string v45, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-virtual/range {v44 .. v45}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_b

    .line 1548
    move/from16 v0, v24

    add-int/lit16 v0, v0, 0x100

    move/from16 v24, v0

    .line 1549
    const-string v44, "surface_motion_engine"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 1550
    const-string v44, "surface_palm_touch"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 1551
    const-string v44, "surface_palm_swipe"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 1552
    const/high16 v44, 0x400000

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v44

    if-eqz v44, :cond_b

    const-string v44, "ro.product.device"

    invoke-static/range {v44 .. v44}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    const-string v45, "philippe"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_b

    invoke-static/range {p0 .. p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v44

    if-nez v44, :cond_b

    .line 1555
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e1256

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1556
    move/from16 v25, v26

    .line 1564
    :cond_b
    const-string v44, "any_screen_enabled"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 1566
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v44

    const-string v45, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v44 .. v45}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1d

    .line 1567
    const-string v44, "sidesoftkey_switch"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 1568
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e0a49

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1571
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e0a4a

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1591
    :goto_5
    add-int/lit8 v24, v24, 0x2

    .line 1592
    const-string v44, "smart_pause"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    .line 1593
    .local v34, "smartpause":I
    const-string v44, "intelligent_rotation_mode"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    .line 1594
    .local v35, "smartrotation":I
    const-string v44, "intelligent_sleep_mode"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    .line 1595
    .local v38, "smartstay":I
    const-string v44, "smart_scroll"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v37

    .line 1599
    .local v37, "smartscroll":I
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e110e

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1613
    or-int v44, v38, v35

    or-int v44, v44, v34

    or-int v36, v44, v37

    .line 1616
    const-string v44, "com.samsung.android.app.screenreader"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_c

    .line 1617
    move/from16 v0, v24

    add-int/lit16 v0, v0, 0x4000

    move/from16 v24, v0

    .line 1618
    const-string v44, "enabled_accessibility_samsung_screen_reader"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 1619
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e092f

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1622
    :cond_c
    const-string v44, "com.samsung.android.universalswitch"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v44

    if-eqz v44, :cond_d

    .line 1623
    const/16 v44, 0x2

    move/from16 v0, p1

    move/from16 v1, v44

    if-eq v0, v1, :cond_d

    .line 1624
    const v44, 0x8000

    add-int v24, v24, v44

    .line 1625
    const-string v44, "universal_switch_enabled"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v42

    .line 1626
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e0930

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1631
    :cond_d
    const-string v44, "com.samsung.android.app.talkback"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_f

    .line 1632
    if-eqz p1, :cond_f

    .line 1633
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v44

    if-eqz v44, :cond_1e

    const/16 v40, 0x1

    .line 1634
    :goto_6
    const/16 v44, 0x1

    move/from16 v0, v40

    move/from16 v1, v44

    if-ne v0, v1, :cond_e

    .line 1635
    const/high16 v44, 0x10000

    add-int v24, v24, v44

    .line 1637
    :cond_e
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e0a0f

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1642
    :cond_f
    const-string v44, "com.google.android.marvin.talkback"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_11

    .line 1643
    const/16 v44, 0x1

    move/from16 v0, p1

    move/from16 v1, v44

    if-eq v0, v1, :cond_11

    .line 1644
    const/16 v44, 0x1

    move/from16 v0, v40

    move/from16 v1, v44

    if-eq v0, v1, :cond_10

    .line 1645
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v44

    if-eqz v44, :cond_1f

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v44

    if-nez v44, :cond_1f

    const/16 v40, 0x1

    .line 1646
    :goto_7
    const/high16 v44, 0x10000

    add-int v24, v24, v44

    .line 1648
    :cond_10
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e0a0e

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1675
    :cond_11
    const-string v44, "com.sec.feature.overlaymagnifier"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_12

    .line 1676
    const/high16 v44, 0x20000

    add-int v24, v24, v44

    .line 1677
    const-string v44, "finger_magnifier"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1678
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e0916

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1681
    :cond_12
    const/16 v44, 0x2

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_13

    .line 1682
    const/high16 v44, 0x80000

    add-int v24, v24, v44

    .line 1683
    const-string v44, "accessibility_display_magnification_enabled"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 1684
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e0911

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1693
    :cond_13
    const/16 v44, 0x2

    move/from16 v0, p1

    move/from16 v1, v44

    if-eq v0, v1, :cond_15

    .line 1694
    const-string v44, "com.samsung.android.app.aodservice"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_15

    .line 1695
    const/high16 v44, 0x100000

    add-int v24, v24, v44

    .line 1696
    const-string v44, "aod_mode"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_14

    const-string v44, "aod_night_mode"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_20

    :cond_14
    const/4 v6, 0x1

    .line 1697
    :goto_8
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e168f

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1698
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e168e

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1702
    :cond_15
    or-int v44, v16, v14

    or-int v44, v44, v8

    or-int v44, v44, v12

    or-int v44, v44, v28

    or-int v44, v44, v36

    or-int v44, v44, v5

    or-int v44, v44, v43

    or-int v44, v44, v4

    or-int v44, v44, v25

    or-int v44, v44, v23

    or-int v44, v44, v39

    or-int v44, v44, v41

    or-int v44, v44, v22

    or-int v44, v44, v33

    or-int v44, v44, v3

    or-int v44, v44, v13

    or-int v44, v44, v32

    or-int v44, v44, v40

    or-int v44, v44, v42

    or-int v44, v44, v17

    or-int v44, v44, v29

    or-int v44, v44, v7

    or-int v44, v44, v11

    or-int v44, v44, v6

    if-lez v44, :cond_21

    const/4 v15, 0x1

    .line 1706
    :goto_9
    const-string v44, "is_enabled"

    move-object/from16 v0, v44

    invoke-virtual {v9, v0, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1707
    const-string v44, "option_flag"

    move-object/from16 v0, v44

    move/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1708
    const-string v44, "dialog_content"

    move-object/from16 v0, v44

    invoke-virtual {v9, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    return-object v9

    .line 1410
    .end local v3    # "airbrowser":I
    .end local v4    # "aircommand":I
    .end local v5    # "allSoundOff":I
    .end local v6    # "aod":I
    .end local v7    # "appsEdge":I
    .end local v8    # "assistantmenu":I
    .end local v10    # "dialog_content":Ljava/lang/String;
    .end local v11    # "edgescreen":I
    .end local v12    # "fingerairview":I
    .end local v13    # "hoverZoom":I
    .end local v14    # "interactioncontrol":I
    .end local v16    # "magnificationGesture":I
    .end local v17    # "magnifier":I
    .end local v18    # "motion_changed_browse":Landroid/content/Intent;
    .end local v20    # "motion_changed_scroll":Landroid/content/Intent;
    .end local v21    # "multiwindow":I
    .end local v22    # "onehandinput":I
    .end local v23    # "onehandoperation":I
    .end local v25    # "palmMotion":I
    .end local v26    # "palmoptionswipe":I
    .end local v27    # "palmoptiontouch":I
    .end local v28    # "penairview":I
    .end local v29    # "peopleEdge":I
    .end local v32    # "screenreader":I
    .end local v33    # "sidesoftkey":I
    .end local v34    # "smartpause":I
    .end local v35    # "smartrotation":I
    .end local v36    # "smartscreen":I
    .end local v37    # "smartscroll":I
    .end local v38    # "smartstay":I
    .end local v39    # "sounddetector":I
    .end local v40    # "talkback":I
    .end local v41    # "toolbox":I
    .end local v42    # "universalinput":I
    .end local v43    # "writingbuddy":I
    :cond_16
    const/16 v44, 0x2

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_17

    .line 1411
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const v45, 0x7f0e0994

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const v48, 0x7f0e0a10

    move-object/from16 v0, v30

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, v30

    move/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "dialog_content":Ljava/lang/String;
    goto/16 :goto_0

    .line 1413
    .end local v10    # "dialog_content":Ljava/lang/String;
    :cond_17
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const v45, 0x7f0e0995

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "dialog_content":Ljava/lang/String;
    goto/16 :goto_0

    .line 1450
    .restart local v3    # "airbrowser":I
    .restart local v4    # "aircommand":I
    .restart local v5    # "allSoundOff":I
    .restart local v6    # "aod":I
    .restart local v7    # "appsEdge":I
    .restart local v8    # "assistantmenu":I
    .restart local v11    # "edgescreen":I
    .restart local v12    # "fingerairview":I
    .restart local v13    # "hoverZoom":I
    .restart local v14    # "interactioncontrol":I
    .restart local v16    # "magnificationGesture":I
    .restart local v17    # "magnifier":I
    .restart local v21    # "multiwindow":I
    .restart local v22    # "onehandinput":I
    .restart local v23    # "onehandoperation":I
    .restart local v25    # "palmMotion":I
    .restart local v26    # "palmoptionswipe":I
    .restart local v27    # "palmoptiontouch":I
    .restart local v28    # "penairview":I
    .restart local v29    # "peopleEdge":I
    .restart local v32    # "screenreader":I
    .restart local v33    # "sidesoftkey":I
    .restart local v36    # "smartscreen":I
    .restart local v39    # "sounddetector":I
    .restart local v40    # "talkback":I
    .restart local v41    # "toolbox":I
    .restart local v42    # "universalinput":I
    .restart local v43    # "writingbuddy":I
    :cond_18
    const-string v44, "finger_air_view"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    goto/16 :goto_1

    .line 1464
    :cond_19
    const/16 v44, 0x2

    move/from16 v0, p1

    move/from16 v1, v44

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v44

    const-string v45, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual/range {v44 .. v45}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v44

    const-string v45, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-virtual/range {v44 .. v45}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_2

    .line 1467
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e1271

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 1496
    :cond_1a
    const-string v44, "com.samsung.android.app.advsounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_6

    .line 1497
    move/from16 v0, v24

    add-int/lit16 v0, v0, 0x800

    move/from16 v24, v0

    .line 1498
    const-string v44, "sound_detector"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    .line 1499
    if-nez v39, :cond_1b

    const-string v44, "doorbell_detector"

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    .line 1500
    :cond_1b
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e0a1d

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    .line 1512
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1577
    .restart local v18    # "motion_changed_browse":Landroid/content/Intent;
    .restart local v20    # "motion_changed_scroll":Landroid/content/Intent;
    :cond_1d
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\n- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const v45, 0x7f0e0a4a

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    .line 1633
    .restart local v34    # "smartpause":I
    .restart local v35    # "smartrotation":I
    .restart local v37    # "smartscroll":I
    .restart local v38    # "smartstay":I
    :cond_1e
    const/16 v40, 0x0

    goto/16 :goto_6

    .line 1645
    :cond_1f
    const/16 v40, 0x0

    goto/16 :goto_7

    .line 1696
    :cond_20
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 1702
    :cond_21
    const/4 v15, 0x0

    goto/16 :goto_9
.end method

.method public static isTetheringEnabled(Landroid/content/Context;)Z
    .locals 18
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 6582
    const/4 v13, 0x0

    .line 6583
    .local v13, "usbTethered":Z
    const/4 v3, 0x0

    .line 6584
    .local v3, "btTethered":Z
    const-string v15, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 6585
    .local v4, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v12

    .line 6586
    .local v12, "tethered":[Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v9

    .line 6587
    .local v9, "mUsbRegexs":[Ljava/lang/String;
    const-string v15, "true"

    const-string v16, "bluetooth.pan.tether_on"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 6588
    move-object v1, v12

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v11, v1, v6

    .line 6589
    .local v11, "s":Ljava/lang/String;
    move-object v2, v9

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v10, v2, v5

    .line 6590
    .local v10, "regex":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v13, 0x1

    .line 6589
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6588
    .end local v10    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_0

    .line 6593
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v11    # "s":Ljava/lang/String;
    :cond_2
    const-string v15, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    .line 6594
    .local v14, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v15, "ApnSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "isTetheringEnabled btTethered:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/usbTethered:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/isWifiApEnabled:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 6596
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 6597
    if-nez v3, :cond_3

    if-nez v13, :cond_3

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v15

    if-eqz v15, :cond_4

    :cond_3
    const/4 v15, 0x1

    .line 6599
    :goto_2
    return v15

    .line 6597
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 6599
    :cond_5
    if-nez v13, :cond_6

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_6
    const/4 v15, 0x1

    goto :goto_2

    :cond_7
    const/4 v15, 0x0

    goto :goto_2
.end method

.method public static isUSA()Z
    .locals 2

    .prologue
    .line 5187
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 5189
    .local v0, "SALES_CODE":Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CSP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TFN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BNN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XAA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5196
    :cond_0
    const/4 v1, 0x1

    .line 5198
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUSCSimInserted(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 6624
    const/4 v0, 0x0

    .line 6625
    .local v0, "isUscSimEnable":Z
    const-string v1, "311580"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "311225"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "311390"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6627
    :cond_0
    const/4 v0, 0x1

    .line 6629
    :cond_1
    return v0
.end method

.method public static isUniversalSwitchEnabled(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 1182
    invoke-static {p0}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return v7

    .line 1185
    :cond_1
    const/16 v1, 0x3a

    .line 1186
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.samsung.android.universalswitch"

    .line 1187
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v6, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1189
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    if-eqz p0, :cond_0

    .line 1192
    const/4 v5, 0x0

    .line 1193
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 1194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1196
    :cond_2
    if-nez v5, :cond_3

    .line 1197
    const-string v5, ""

    .line 1200
    :cond_3
    move-object v2, v6

    .line 1202
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1204
    :cond_4
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1205
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 1206
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1208
    .local v4, "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_4

    .line 1209
    const-string v8, "com.samsung.android.universalswitch"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1210
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isUniversalSwitchSupportMultiUser()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6547
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 6548
    .local v0, "mainUser":Z
    :goto_0
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUniversalSwitchSupportMultiUser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6549
    if-eqz v0, :cond_1

    .line 6552
    :goto_1
    return v1

    .end local v0    # "mainUser":Z
    :cond_0
    move v0, v2

    .line 6547
    goto :goto_0

    .restart local v0    # "mainUser":Z
    :cond_1
    move v1, v2

    .line 6552
    goto :goto_1
.end method

.method public static isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6557
    const/4 v0, 0x0

    .line 6558
    .local v0, "isKnoxEnabled":Z
    if-nez p0, :cond_1

    .line 6559
    const-string v3, "Utils"

    const-string v4, "isUniversalSwitchSupportMultiUserKnoxMode  context is Null "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6571
    :cond_0
    :goto_0
    return v2

    .line 6562
    :cond_1
    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6563
    const/4 v0, 0x1

    .line 6565
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    .line 6566
    .local v1, "mainUser":Z
    :goto_1
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUniversalSwitchSupportMultiUserKnoxMode  mainUser is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6567
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUniversalSwitchSupportMultiUserKnoxMode KnoxEnabled Value is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6568
    if-eqz v1, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    move v2, v3

    .line 6571
    goto :goto_0

    .end local v1    # "mainUser":Z
    :cond_4
    move v1, v3

    .line 6565
    goto :goto_1
.end method

.method public static isUsermanualForMOS()Z
    .locals 2

    .prologue
    .line 7887
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 7888
    const/4 v0, 0x1

    .line 7890
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVTCallCapable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 4684
    const/4 v0, 0x0

    return v0
.end method

.method public static isVZWSimInserted(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 6604
    const/4 v0, 0x0

    .line 6605
    .local v0, "isVzwSimEnable":Z
    const-string v1, "311480"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "20404"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6606
    :cond_0
    const/4 v0, 0x1

    .line 6608
    :cond_1
    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 625
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 627
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVzwEditable(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "tIntent"    # Landroid/content/Intent;

    .prologue
    .line 6726
    const/4 v0, 0x0

    .line 6727
    .local v0, "isVzwEditable":Z
    const-string v3, "vzw"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6729
    .local v2, "strNameVzw":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 6730
    const/4 v0, 0x0

    .line 6735
    :goto_0
    const-string v3, "LTE_TEST"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6737
    .local v1, "strFromHidden":Ljava/lang/String;
    const-string v3, "editable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6738
    const/4 v0, 0x1

    .line 6740
    :cond_0
    return v0

    .line 6732
    .end local v1    # "strFromHidden":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVzwVoLTEFeatureEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 4672
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportHuxAdvancedCalling"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->isNonVerizonSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4677
    :cond_0
    :goto_0
    return v0

    .line 4675
    :cond_1
    invoke-static {v0, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    .line 4676
    .local v0, "isVzwVoLTEEnabled":Z
    const-string v1, "Settings_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVzwVoLTEFeatureEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isWifiCallingEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4400
    const/4 v0, 0x0

    .line 4402
    .local v0, "isWfcRegistered":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4403
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 4406
    :cond_0
    return v0
.end method

.method public static isWifiEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4313
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 4315
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 4316
    const-string v1, "SmartBonding"

    const-string v2, "Can\'t get WifiManager."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    const/4 v1, 0x0

    .line 4320
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 640
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 642
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isZeroLauncher(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3572
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.launcher"

    const-string v3, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3578
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 3575
    :catch_0
    move-exception v1

    .line 3576
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadFavorites(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5353
    .local p1, "tempCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/DashboardCategory;>;"
    const-string v2, "Favorite"

    const-string v3, "loadFavorites"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5355
    const/16 v25, 0x0

    .line 5356
    .local v25, "removeFlagDockSetting":Z
    const/16 v8, 0x14

    .line 5358
    .local v8, "DIFF":I
    new-instance v14, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-direct {v14}, Lcom/android/settings/dashboard/DashboardCategory;-><init>()V

    .line 5360
    .local v14, "favorites":Lcom/android/settings/dashboard/DashboardCategory;
    new-instance v28, Lcom/android/settings/search/ValueTrackerActivity;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Lcom/android/settings/search/ValueTrackerActivity;-><init>(Landroid/content/Context;)V

    .line 5362
    .local v28, "vta":Lcom/android/settings/search/ValueTrackerActivity;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5364
    .local v10, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/DashboardCategory;>;"
    const v2, 0x7f080030

    move-object/from16 v0, p0

    invoke-static {v2, v10, v0}, Lcom/android/settings/search/ValueTrackerActivity;->loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V

    .line 5367
    invoke-static/range {p0 .. p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v17

    .line 5368
    .local v17, "isKioskContainer":Z
    if-eqz v17, :cond_1

    .line 5458
    :cond_0
    :goto_0
    return-void

    .line 5371
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5372
    .local v9, "c2":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 5374
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 5375
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 5378
    :cond_2
    const/16 v19, 0x0

    .line 5381
    .local v19, "key":Ljava/lang/String;
    const/16 v23, 0x0

    .line 5382
    .local v23, "knoxCustomSettingsTileHiddenKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 5383
    .local v22, "knoxCustomSettingsState":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getInstance()Landroid/app/enterprise/knoxcustom/SettingsManager;

    move-result-object v21

    .line 5384
    .local v21, "knoxCustomSettingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    if-eqz v21, :cond_3

    .line 5385
    invoke-virtual/range {v21 .. v21}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getSettingsHiddenState()I

    move-result v22

    .line 5389
    :cond_3
    const-string v2, "Favorite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Favorites count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5390
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 5391
    .local v24, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/settings/dashboard/DashboardTile;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5392
    const/4 v13, 0x0

    .line 5395
    .local v13, "count":I
    :cond_4
    const-string v2, "key"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 5396
    const-string v2, "Favorite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5398
    const-string v2, "dock_settings"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 5399
    const/16 v25, 0x1

    .line 5438
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x9

    if-lt v13, v2, :cond_4

    .line 5440
    .end local v13    # "count":I
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5442
    iget-object v2, v14, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    new-instance v3, Lcom/android/settings/Utils$IndexAscCompare;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Lcom/android/settings/Utils$IndexAscCompare;-><init>(Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5444
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5446
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_7

    .line 5447
    const-string v2, "dock_settings"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->removeFavorite(Landroid/content/Context;Ljava/lang/String;)V

    .line 5451
    :cond_7
    if-eqz v23, :cond_0

    .line 5452
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 5454
    .local v20, "key_string":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->removeFavorite(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 5403
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v20    # "key_string":Ljava/lang/String;
    .restart local v13    # "count":I
    :cond_8
    const-string v2, "categoryid"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 5404
    .local v12, "categoryid":Ljava/lang/String;
    const-string v2, "Favorite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "categoryid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5405
    const/16 v27, 0x0

    .line 5406
    .local v27, "total":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_5

    .line 5407
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/dashboard/DashboardCategory;

    .line 5408
    .local v11, "category":Lcom/android/settings/dashboard/DashboardCategory;
    invoke-virtual {v11}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    add-int v27, v27, v2

    .line 5409
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-wide v4, v11, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5410
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_3
    invoke-virtual {v11}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_c

    .line 5411
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v3

    iget-wide v4, v3, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5412
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v26

    .line 5422
    .local v26, "tile":Lcom/android/settings/dashboard/DashboardTile;
    move-object/from16 v0, v26

    iget-wide v2, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v2, v2

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->isKnoxCustomSettingsTileHidden(II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5424
    if-nez v23, :cond_9

    .line 5425
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "knoxCustomSettingsTileHiddenKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 5427
    .restart local v23    # "knoxCustomSettingsTileHiddenKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5410
    .end local v26    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_a
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 5431
    .restart local v26    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_b
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 5432
    add-int v2, v27, v18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5433
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 5406
    .end local v18    # "j":I
    .end local v26    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2
.end method

.method public static localeTranslate(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resId"    # I

    .prologue
    .line 6576
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 6577
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 6578
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static locateSmartNetworkSwitch(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 4775
    if-nez p0, :cond_1

    .line 4776
    const-string v0, "WifiSettings/AdvancedWifiSettings/SettingsSearchUtils"

    const-string v1, "context is null."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    const/4 v0, -0x1

    .line 4798
    :cond_0
    :goto_0
    return v0

    .line 4779
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_2

    .line 4780
    const-string v1, "WifiSettings/AdvancedWifiSettings/SettingsSearchUtils"

    const-string v2, "locateSmartNetworkSwitch() - WIFI_SMART_NETWORK_SWITCH_DISABLED(myUserId != USER_OWNER)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4785
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_watchdog_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_4

    :cond_3
    const-string v2, "REMOVED"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4788
    :cond_4
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiSettings/AdvancedWifiSettings/SettingsSearchUtils"

    const-string v2, "locateSmartNetworkSwitch() - WIFI_SMART_NETWORK_SWITCH_DISABLED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4791
    :cond_5
    const-string v0, "ADVANCED"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Wifi_ConfigSnsMenuPosition"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4792
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "WifiSettings/AdvancedWifiSettings/SettingsSearchUtils"

    const-string v1, "locateSmartNetworkSwitch() - WIFI_SMART_NETWORK_SWITCH_ON_ADVANCED_WIFI_SETTINGS"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4794
    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    .line 4796
    :cond_7
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "WifiSettings/AdvancedWifiSettings/SettingsSearchUtils"

    const-string v2, "locateSmartNetworkSwitch() - WIFI_SMART_NETWORK_SWITCH_ON_WIFI_SETTINGS"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v0, v1

    .line 4798
    goto :goto_0
.end method

.method public static modifyApn(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "mccmnc"    # Ljava/lang/String;
    .param p3, "mSimSlot"    # I
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 7092
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    .line 7093
    .local v1, "modApn":[Ljava/lang/String;
    const/4 v5, 0x0

    aput-object p5, v1, v5

    .line 7094
    const/4 v5, 0x1

    aput-object p4, v1, v5

    .line 7095
    invoke-static {p3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 7099
    .local v2, "numeric":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "45005"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "oversea"

    const-string v6, "ril.currentplmn"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "web.sktelecom.com"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "lte.sktelecom.com"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7103
    :cond_0
    const/4 v5, 0x1

    const-string v6, "roaming.sktelecom.com"

    aput-object v6, v1, v5

    .line 7107
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "internet.lguplus.co.kr"

    invoke-virtual {p4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 7108
    const-string v5, "3"

    const-string v6, "ril.simtype"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "oversea"

    const-string v6, "ril.currentplmn"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7109
    const/4 v5, 0x0

    const-string v6, "LG U+ Roaming"

    aput-object v6, v1, v5

    .line 7110
    const/4 v5, 0x1

    const-string v6, "wroaming.lguplus.co.kr"

    aput-object v6, v1, v5

    .line 7116
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 7117
    const-string v4, ""

    .line 7119
    .local v4, "user":Ljava/lang/String;
    :try_start_0
    const-string v5, "user"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 7123
    :goto_0
    const-string v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyAPN user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7124
    const-string v5, "CTNET"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7125
    const/4 v5, 0x0

    const v6, 0x7f0e071a

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 7136
    :cond_3
    :goto_1
    const-string v5, "gsm.current.phone-type"

    const-string v6, "0"

    invoke-static {v5, p3, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 7137
    .local v3, "phoneType":I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_a

    if-nez p3, :cond_a

    .line 7138
    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 7143
    .end local v3    # "phoneType":I
    .end local v4    # "user":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGlobalRoamingLRA()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7144
    const-string v5, "LTE - Verizon Internet"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7145
    const/4 v5, 0x0

    const-string v6, "LTE Internet"

    aput-object v6, v1, v5

    .line 7148
    :cond_5
    return-object v1

    .line 7120
    .restart local v4    # "user":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 7121
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 7126
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    const-string v5, "CTWAP"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 7127
    const/4 v5, 0x0

    const v6, 0x7f0e0719

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    goto :goto_1

    .line 7128
    :cond_7
    const/4 v5, 0x1

    if-ne p3, v5, :cond_8

    const v5, 0x1040a40

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 7129
    const/4 v5, 0x0

    const v6, 0x1040a43

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    goto :goto_1

    .line 7130
    :cond_8
    const/4 v5, 0x1

    if-ne p3, v5, :cond_9

    const v5, 0x1040a41

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 7131
    const/4 v5, 0x0

    const v6, 0x1040a44

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    goto :goto_1

    .line 7132
    :cond_9
    const/4 v5, 0x1

    if-ne p3, v5, :cond_3

    const v5, 0x1040a42

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7133
    const/4 v5, 0x0

    const v6, 0x1040a45

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    goto/16 :goto_1

    .line 7140
    .restart local v3    # "phoneType":I
    :cond_a
    const/4 v5, 0x1

    aput-object p4, v1, v5

    goto/16 :goto_2
.end method

.method public static onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResPackageName"    # Ljava/lang/String;
    .param p4, "titleResId"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "isShortcut"    # Z

    .prologue
    .line 2488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2489
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2490
    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2491
    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2492
    const-string v1, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2494
    const-string v1, ":settings:show_fragment_title_resid"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2495
    const-string v1, ":settings:show_fragment_title"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2496
    const-string v1, ":settings:show_fragment_as_shortcut"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2497
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2498
    return-object v0
.end method

.method public static performClickMenuBySearch(Landroid/app/Fragment;)Z
    .locals 6
    .param p0, "mCurrentFrag"    # Landroid/app/Fragment;

    .prologue
    .line 6365
    const/4 v2, 0x0

    .line 6366
    .local v2, "ret":Z
    instance-of v4, p0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v4, :cond_4

    move-object v4, p0

    .line 6367
    check-cast v4, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v4}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .local v3, "root":Landroid/preference/PreferenceScreen;
    move-object v4, p0

    .line 6368
    check-cast v4, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v4}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 6369
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object v4, p0

    .line 6370
    check-cast v4, Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceHighlighted(Z)V

    .line 6371
    const-string v4, "wallpaper_attributions"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6372
    const-string v0, "container"

    .line 6374
    :cond_0
    sget-object v4, Lcom/android/settings/Utils;->FMM_MENUES:[Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6375
    const-string v0, "find_my_mobile"

    .line 6377
    :cond_1
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 6378
    .local v1, "pref":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6379
    check-cast p0, Lcom/android/settings/SettingsPreferenceFragment;

    .end local p0    # "mCurrentFrag":Landroid/app/Fragment;
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightBySearch(Ljava/lang/String;)V

    .line 6381
    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/settings/Utils;->DONT_CLICK_MENUS:[Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    instance-of v4, v1, Landroid/preference/CheckBoxPreference;

    if-nez v4, :cond_4

    instance-of v4, v1, Landroid/preference/SwitchPreference;

    if-nez v4, :cond_4

    instance-of v4, v1, Lcom/android/settings/DropDownPreference;

    if-nez v4, :cond_4

    .line 6387
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 6388
    instance-of v4, v1, Lcom/android/settings/DefaultRingtonePreference;

    if-nez v4, :cond_3

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 6389
    :cond_3
    const/4 v2, 0x0

    .line 6400
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "pref":Landroid/preference/Preference;
    .end local v3    # "root":Landroid/preference/PreferenceScreen;
    :cond_4
    :goto_0
    return v2

    .line 6391
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "pref":Landroid/preference/Preference;
    .restart local v3    # "root":Landroid/preference/PreferenceScreen;
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V
    .locals 9
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/view/View;
    .param p3, "ignoreSidePadding"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 2148
    invoke-virtual {p2}, Landroid/view/View;->getScrollBarStyle()I

    move-result v6

    const/high16 v8, 0x2000000

    if-ne v6, v8, :cond_1

    move v1, v7

    .line 2149
    .local v1, "movePadding":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2150
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2151
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x7f0c015f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2152
    .local v3, "paddingSide":I
    const v6, 0x105002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2154
    .local v2, "paddingBottom":I
    const v6, 0x7f0c00a1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2155
    .local v4, "paddingTop":I
    instance-of v6, p0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v6, :cond_3

    .line 2156
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v6, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 2158
    if-eqz p3, :cond_2

    .line 2159
    .local v0, "effectivePaddingSide":I
    :goto_1
    invoke-virtual {p2, v0, v4, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 2164
    .end local v0    # "effectivePaddingSide":I
    .end local v2    # "paddingBottom":I
    .end local v3    # "paddingSide":I
    .end local v4    # "paddingTop":I
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_2
    return-void

    .end local v1    # "movePadding":Z
    :cond_1
    move v1, v0

    .line 2148
    goto :goto_0

    .restart local v1    # "movePadding":Z
    .restart local v2    # "paddingBottom":I
    .restart local v3    # "paddingSide":I
    .restart local v4    # "paddingTop":I
    .restart local v5    # "res":Landroid/content/res/Resources;
    :cond_2
    move v0, v3

    .line 2158
    goto :goto_1

    .line 2161
    :cond_3
    invoke-virtual {p2, v3, v4, v3, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_2
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 9

    .prologue
    .line 3240
    sget-object v6, Lcom/android/settings/Utils;->mSalesCode:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/settings/Utils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 3241
    sget-object v6, Lcom/android/settings/Utils;->mSalesCode:Ljava/lang/String;

    .line 3273
    .local v0, "br":Ljava/io/BufferedReader;
    .local v4, "fr":Ljava/io/FileReader;
    :goto_0
    return-object v6

    .line 3244
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    :cond_0
    const/4 v4, 0x0

    .line 3245
    .restart local v4    # "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 3248
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v6, "/efs/imei/mps_code.dat"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3249
    .local v3, "fe":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3251
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/efs/imei/mps_code.dat"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3252
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3253
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings/Utils;->mSalesCode:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 3266
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :goto_1
    if-eqz v4, :cond_1

    .line 3267
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 3268
    :cond_1
    if-eqz v0, :cond_2

    .line 3269
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 3273
    .end local v3    # "fe":Ljava/io/File;
    :cond_2
    :goto_2
    sget-object v6, Lcom/android/settings/Utils;->mSalesCode:Ljava/lang/String;

    goto :goto_0

    .line 3255
    .restart local v3    # "fe":Ljava/io/File;
    :cond_3
    :try_start_4
    const-string v6, "Settings_Utils"

    const-string v7, "mps_code.dat does not exist"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings/Utils;->mSalesCode:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 3258
    .end local v3    # "fe":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 3259
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v6, "Settings_Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File not Found exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings/Utils;->mSalesCode:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3266
    if-eqz v4, :cond_4

    .line 3267
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 3268
    :cond_4
    if-eqz v0, :cond_2

    .line 3269
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 3270
    :catch_1
    move-exception v6

    goto :goto_2

    .line 3261
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 3262
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings/Utils;->mSalesCode:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3266
    if-eqz v4, :cond_5

    .line 3267
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 3268
    :cond_5
    if-eqz v0, :cond_2

    .line 3269
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 3270
    :catch_3
    move-exception v6

    goto :goto_2

    .line 3265
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 3266
    :goto_5
    if-eqz v4, :cond_6

    .line 3267
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 3268
    :cond_6
    if-eqz v0, :cond_7

    .line 3269
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 3271
    :cond_7
    :goto_6
    throw v6

    .line 3270
    :catch_4
    move-exception v7

    goto :goto_6

    .line 3265
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fe":Ljava/io/File;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 3261
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 3258
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 3270
    :catch_9
    move-exception v6

    goto :goto_2
.end method

.method public static removeBrokenEmojiChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 6262
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6263
    const-string p0, ""

    .line 6277
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "ch":C
    .local v1, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 6265
    .end local v0    # "ch":C
    .end local v1    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 6266
    .restart local v1    # "length":I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 6267
    .restart local v0    # "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6268
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 6270
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6271
    const-string p0, ""

    goto :goto_0

    .line 6273
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 6274
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6275
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeFavorite(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    const/4 v4, 0x0

    .line 5317
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    .line 5318
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "key"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5319
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 5327
    :goto_0
    return-void

    .line 5320
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5321
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 5322
    .local v7, "id":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5326
    .end local v7    # "id":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 5324
    :cond_1
    const-string v0, "Favorite"

    const-string v1, "no data!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static removeFavorite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 4105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "key"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4107
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 4119
    :goto_0
    return-void

    .line 4111
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4112
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4113
    .local v7, "id":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4118
    .end local v7    # "id":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4115
    :cond_1
    const-string v0, "Favorite"

    const-string v1, "no data!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static replaceLTEString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 900
    const-string v0, "XEC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    const-string v0, "LTE"

    const-string v1, "4G"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 903
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static replaceSIMString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 890
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 892
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 893
    const-string v0, "SIM"

    const-string v1, "UIM"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 895
    :cond_1
    const-string v0, "SIM"

    const-string v1, "UIM/SIM"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static reqEnableCpa(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7367
    const/4 v0, 0x0

    .line 7368
    .local v0, "bEnable":Ljava/lang/Boolean;
    const-string v4, "6"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "5"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7369
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 7374
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 7390
    :goto_1
    return-void

    .line 7370
    :cond_2
    invoke-static {p0}, Lcom/android/settings/Utils;->isCpaOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7371
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 7376
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "kddi_cpa_on"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7379
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.kddi.android.cpa.CHANGE_MODE_CPA_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7381
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7382
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.kddi.android.cpa.CPA_ENABLED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7383
    const-string v2, "state"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7384
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    move v2, v3

    .line 7376
    goto :goto_2

    .line 7386
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.kddi.android.cpa.CPA_DISABLED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7387
    const-string v2, "state"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7388
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static saveFavorite(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 5304
    if-eqz p0, :cond_0

    .line 5305
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 5306
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Lcom/android/settings/dashboard/DashboardTile;->categoryId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 5308
    .local v0, "categoryid":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5309
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "key"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5310
    const-string v3, "categoryid"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5311
    const-string v3, "ranking"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5314
    .end local v0    # "categoryid":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public static setCarrierEnabledStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "selectedKey"    # Ljava/lang/String;

    .prologue
    .line 7322
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7364
    :goto_0
    return-void

    .line 7325
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7329
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "carrier_enabled"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 7333
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7334
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_8

    .line 7335
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 7336
    .local v9, "key":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 7337
    .local v6, "apn":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 7338
    .local v11, "type":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 7340
    .local v7, "carrier_enabled":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 7341
    .local v10, "resolver":Landroid/content/ContentResolver;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 7342
    .local v12, "values":Landroid/content/ContentValues;
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7343
    const-string v0, "carrier_enabled"

    const-string v1, "1"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7359
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    invoke-virtual {v0, v1, v12, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7361
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 7345
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "unitrg.au-net.ne.jp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "3"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "autrg.au-net.ne.jp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7347
    :cond_3
    const-string v0, "carrier_enabled"

    const-string v1, "1"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 7348
    :cond_4
    const-string v0, "ims"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "xcap"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "bip"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7349
    :cond_5
    const-string v0, "carrier_enabled"

    const-string v1, "1"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 7352
    :cond_6
    const-string v0, "0"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7353
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 7356
    :cond_7
    const-string v0, "carrier_enabled"

    const-string v1, "0"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 7363
    .end local v6    # "apn":Ljava/lang/String;
    .end local v7    # "carrier_enabled":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    .end local v11    # "type":Ljava/lang/String;
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 6081
    const/4 v1, 0x0

    .line 6082
    .local v1, "result":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 6083
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6084
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "API"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6085
    const-string v3, "flag"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6086
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 6087
    return-void
.end method

.method public static setExternalTiles(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;Landroid/os/UserHandle;Ljava/util/Map;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetTile"    # Lcom/android/settings/dashboard/DashboardTile;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/dashboard/DashboardTile;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settings/dashboard/DashboardTile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settings/dashboard/DashboardTile;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 510
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v11, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v4, "intent":Landroid/content/Intent;
    const/16 v11, 0x80

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v7, v4, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    .line 513
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v11, "Settings_Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "user.getIdentifier()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 515
    .local v8, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v11, v8, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v11, :cond_0

    .line 519
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 520
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 521
    .local v6, "metaData":Landroid/os/Bundle;
    if-eqz v6, :cond_1

    const-string v11, "com.android.settings.category"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 522
    :cond_1
    const-string v12, "Settings_Utils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " for action "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " missing metadata "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v6, :cond_2

    const-string v11, ""

    :goto_1
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v11, "com.android.settings.category"

    goto :goto_1

    .line 527
    :cond_3
    const-string v11, "com.android.settings.category"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "categoryKey":Ljava/lang/String;
    const-string v11, "Settings_Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "categoryKey="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-instance v5, Landroid/util/Pair;

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 532
    .local v5, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/dashboard/DashboardTile;

    .line 533
    .local v10, "tile":Lcom/android/settings/dashboard/DashboardTile;
    if-nez v10, :cond_4

    .line 534
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    iput-object v11, p1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 536
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z

    .line 537
    move-object/from16 v0, p3

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :goto_2
    iget-object v11, p1, Lcom/android/settings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    const-string v11, "Settings_Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add user ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 539
    :cond_4
    move-object p1, v10

    goto :goto_2

    .line 544
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "categoryKey":Ljava/lang/String;
    .end local v5    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v8    # "resolved":Landroid/content/pm/ResolveInfo;
    .end local v10    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_5
    return-void
.end method

.method public static setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 4926
    const v0, 0x3f99999a    # 1.2f

    .line 4927
    .local v0, "MAX_FONT_SCALE":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 4928
    .local v1, "fontScale":F
    invoke-virtual {p1}, Landroid/widget/Button;->getTextSize()F

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v2, v3, v4

    .line 4930
    .local v2, "fontsize":F
    cmpl-float v3, v1, v0

    if-lez v3, :cond_0

    .line 4931
    move v1, v0

    .line 4933
    :cond_0
    const/4 v3, 0x1

    mul-float v4, v2, v1

    invoke-virtual {p1, v3, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 4934
    return-void
.end method

.method public static setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 4937
    const v0, 0x3f99999a    # 1.2f

    .line 4938
    .local v0, "MAX_FONT_SCALE":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 4939
    .local v1, "fontScale":F
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v2, v3, v4

    .line 4941
    .local v2, "fontsize":F
    cmpl-float v3, v1, v0

    if-lez v3, :cond_0

    .line 4942
    move v1, v0

    .line 4944
    :cond_0
    const/4 v3, 0x1

    mul-float v4, v2, v1

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4945
    return-void
.end method

.method static setOemUnlockEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 2730
    const-string v1, "persistent_data_block"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 2732
    .local v0, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    invoke-virtual {v0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    .line 2733
    return-void
.end method

.method private static setViewShown(Landroid/view/View;ZZ)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3022
    if-eqz p2, :cond_2

    .line 3023
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p1, :cond_0

    const/high16 v1, 0x10a0000

    :goto_0
    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3025
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz p1, :cond_1

    .line 3026
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3043
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3048
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :goto_2
    return-void

    .line 3023
    :cond_0
    const v1, 0x10a0001

    goto :goto_0

    .line 3028
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    :cond_1
    new-instance v1, Lcom/android/settings/Utils$4;

    invoke-direct {v1, p0}, Lcom/android/settings/Utils$4;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 3045
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 3046
    if-eqz p1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x4

    goto :goto_3
.end method

.method public static showBlockNotiication(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 7755
    const-string v0, "Settings_Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBlockNotiication : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7756
    const-string v0, "com.samsung.android.email.provider"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7757
    const/4 v0, 0x1

    .line 7759
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showSimCardTile(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 2780
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2783
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-le v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static skipApn(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "tIntent"    # Landroid/content/Intent;
    .param p3, "mccmnc"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "apn"    # Ljava/lang/String;
    .param p6, "key"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;
    .param p8, "mSimSlot"    # I

    .prologue
    .line 6980
    invoke-static/range {p8 .. p8}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v6

    .line 6994
    .local v6, "numeric":Ljava/lang/String;
    const-string v7, "edited"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6995
    .local v3, "edited":Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "4"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 6998
    const-string v7, "ApnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APN Edit information : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 6999
    const/4 v7, 0x1

    .line 7088
    :goto_0
    return v7

    .line 7001
    :cond_0
    const-string v7, "ril.ICC_TYPE"

    const-string v8, ""

    move/from16 v0, p8

    invoke-static {v7, v0, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7002
    .local v4, "iccType":Ljava/lang/String;
    const-string v7, "4"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "3"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 7003
    :cond_1
    const-string v7, "live.vodafone.com"

    invoke-virtual {v7, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "truphone.com"

    invoke-virtual {v7, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 7004
    :cond_2
    const-string v7, "ApnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "skip live.vodafone.com or truphone.com, apn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7007
    :cond_3
    const-string v7, "ent1"

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "ent2"

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7009
    :cond_4
    const-string v7, "ApnSettings"

    const-string v8, "Enterprise apn is not added"

    invoke-static {v7, v8}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7010
    const/4 v7, 0x1

    goto :goto_0

    .line 7014
    :cond_5
    const-string v7, "ro.telephony.default_network"

    const-string v8, "Unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 7015
    .local v2, "default_network":Ljava/lang/String;
    const-string v7, "11"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v5, 0x1

    .line 7016
    .local v5, "isLTEOnly":Z
    :goto_1
    if-eqz v5, :cond_7

    const-string v7, "EHRPD"

    invoke-virtual {p4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 7017
    const-string v7, "ApnSettings"

    const-string v8, "EHRPD apn should not be shown in LTE only model"

    invoke-static {v7, v8}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7018
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 7015
    .end local v5    # "isLTEOnly":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 7021
    .restart local v5    # "isLTEOnly":Z
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 7022
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "kddi_cpa_added"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    const/4 v1, 0x1

    .line 7023
    .local v1, "bIsAddedCPA":Z
    :goto_2
    const-string v7, "Manual"

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "5"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-nez v1, :cond_9

    .line 7024
    const-string v7, "ApnSettings"

    const-string v8, "Manual apn is not added"

    invoke-static {v7, v8}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7025
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 7022
    .end local v1    # "bIsAddedCPA":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 7027
    .restart local v1    # "bIsAddedCPA":Z
    :cond_9
    const-string v7, "Manual_for_Navi"

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "6"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-nez v1, :cond_a

    .line 7028
    const-string v7, "ApnSettings"

    const-string v8, "Manual apn for navi is not added"

    invoke-static {v7, v8}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7029
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 7031
    :cond_a
    const-string v7, "ims"

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "8"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 7032
    const-string v7, "ApnSettings"

    const-string v8, "ims apn should not be shown in KDI"

    invoke-static {v7, v8}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7033
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 7035
    .end local v1    # "bIsAddedCPA":Z
    :cond_b
    const-string v7, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 7036
    const-string v7, "ims"

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 7037
    const-string v7, "ApnSettings"

    const-string v8, "ims apn should not be shown in DCM"

    invoke-static {v7, v8}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7038
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 7040
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 7041
    const-string v7, "fourgsmartphone"

    invoke-virtual {v7, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "Application"

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 7042
    const-string v7, "ApnSettings"

    const-string v8, "SBM Default apn do not skip"

    invoke-static {v7, v8}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7046
    :cond_d
    const-string v7, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 7047
    invoke-static {p2}, Lcom/android/settings/Utils;->isVzwEditable(Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 7048
    invoke-static {p3}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 7049
    const-string v7, "ApnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pref1 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7050
    const-string v7, "Verizon Internet"

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "6"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "LTE - Verizon Internet"

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "VZW Roaming Internet"

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 7054
    const-string v7, "35"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "34"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "32"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "33"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "31"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "10"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "9"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "7"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "8"

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 7056
    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 7057
    :cond_f
    const-string v7, "20404"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "default"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 7058
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 7064
    :cond_10
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGlobalRoamingLRA()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 7065
    invoke-static {}, Lcom/android/settings/Utils;->isLRASimInserted()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 7066
    const-string v7, "ApnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pref1 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 7067
    const-string v7, "LTE - Verizon Internet"

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 7068
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 7069
    :cond_11
    const-string v7, "20404"

    invoke-static/range {p8 .. p8}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "default"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 7070
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 7074
    :cond_12
    const-string v7, "ims"

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const-string v7, "0"

    const-string v8, "persist.ril.ims.eutranParam"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 7075
    const-string v7, "ApnSettings"

    const-string v8, "if not ISIM, remove ims apn"

    invoke-static {v7, v8}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 7076
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 7078
    :cond_13
    const-string v7, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 7079
    if-eqz p7, :cond_16

    .line 7080
    const-string v7, "cmdm"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "cmmm"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "cmmb"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "cmmail"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "cmpim"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 7082
    :cond_14
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 7083
    :cond_15
    const-string v7, "wap"

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const-string v7, "WAP"

    invoke-virtual {v7, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    const-string v7, "cmwap"

    invoke-virtual {v7, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 7084
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 7088
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public static startSearchIndexing(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 6411
    if-nez p0, :cond_0

    .line 6412
    const-string v2, "Index"

    const-string v3, "can not start search indexing because of activity = null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6425
    :goto_0
    return-void

    .line 6416
    :cond_0
    move-object v0, p0

    .line 6417
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/Utils$7;

    invoke-direct {v2, v0}, Lcom/android/settings/Utils$7;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6424
    .local v1, "indexing":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2396
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;Z)V

    .line 2398
    return-void
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "isShortcut"    # Z

    .prologue
    .line 2426
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    move-object v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v7

    .line 2428
    .local v7, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 2429
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2433
    :goto_0
    return-void

    .line 2431
    :cond_0
    invoke-virtual {p3, v7, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResPackageName"    # Ljava/lang/String;
    .param p6, "titleResId"    # I
    .param p7, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2419
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;Z)V

    .line 2421
    return-void
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResPackageName"    # Ljava/lang/String;
    .param p6, "titleResId"    # I
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "isShortcut"    # Z

    .prologue
    .line 2438
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v7

    .line 2440
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, ":settings:show_fragment"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2441
    if-nez p3, :cond_0

    .line 2442
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2446
    :goto_0
    return-void

    .line 2444
    :cond_0
    invoke-virtual {p3, v7, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResId"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "isShortcut"    # Z
    .param p6, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 2451
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v7

    .line 2453
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2454
    const v0, 0x8000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2455
    invoke-virtual {p0, v7, p6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2456
    return-void
.end method

.method public static startWithFragmentBySearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    .line 2503
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v7

    .line 2506
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2507
    const/4 v8, 0x0

    .line 2509
    .local v8, "topLevelDashboardTileRank":I
    const-string v0, "com.android.settings.fingerprint.FingerprintSettings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2510
    const-string v0, "com.android.settings.fingerprint.FingerprintEntry"

    invoke-static {v0}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v8

    .line 2515
    :goto_0
    const/16 v0, 0x400

    if-ne v8, v0, :cond_3

    .line 2516
    const/4 v8, 0x0

    .line 2523
    :cond_0
    const/high16 v0, 0x4000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2524
    const-string v0, ":settings:top_level_dashboard_rank"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2526
    const-string v0, ":android:no_headers"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2529
    .end local v8    # "topLevelDashboardTileRank":I
    :cond_1
    if-nez p3, :cond_4

    .line 2530
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2534
    :goto_1
    return-void

    .line 2513
    .restart local v8    # "topLevelDashboardTileRank":I
    :cond_2
    invoke-static {p1}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 2518
    :cond_3
    :goto_2
    sget v0, Lcom/android/settings/search/Ranking;->SUB_DEPTH:I

    if-le v8, v0, :cond_0

    .line 2519
    sget v0, Lcom/android/settings/search/Ranking;->SUB_DEPTH:I

    div-int/2addr v8, v0

    goto :goto_2

    .line 2532
    .end local v8    # "topLevelDashboardTileRank":I
    :cond_4
    invoke-virtual {p3, v7, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public static turnOffTalkBack(Landroid/content/Context;)Z
    .locals 20
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1276
    const/16 v3, 0x3a

    .line 1278
    .local v3, "ENABLED_SERVICES_SEPARATOR":C
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v14

    .line 1280
    .local v14, "mStalkbackEnabled":Z
    new-instance v15, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1281
    .local v15, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    .line 1284
    .local v8, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, v17

    if-ne v8, v0, :cond_0

    .line 1285
    new-instance v8, Ljava/util/HashSet;

    .end local v8    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1288
    .restart local v8    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_0
    const-string v17, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    .line 1291
    .local v16, "toggledService":Landroid/content/ComponentName;
    if-nez v14, :cond_1

    .line 1292
    const-string v17, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    .line 1295
    :cond_1
    const/4 v4, 0x0

    .line 1297
    .local v4, "accessibilityEnabled":Z
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1299
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1300
    .local v13, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1301
    .local v7, "enabledService":Landroid/content/ComponentName;
    invoke-interface {v13, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1303
    const/4 v4, 0x1

    .line 1309
    .end local v7    # "enabledService":Landroid/content/ComponentName;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1314
    .local v9, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1315
    .restart local v7    # "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1318
    .end local v7    # "enabledService":Landroid/content/ComponentName;
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 1319
    .local v10, "enabledServicesBuilderLength":I
    if-lez v10, :cond_5

    .line 1320
    add-int/lit8 v17, v10, -0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1323
    :cond_5
    const/4 v11, 0x0

    .line 1324
    .local v11, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1325
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "enabled_accessibility_services"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1326
    const-string v17, "Utils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "turnOffTalkBack : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    if-eqz v11, :cond_7

    .line 1330
    move-object v5, v15

    .line 1331
    .local v5, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v5, v11}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1333
    :cond_6
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1334
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v6

    .line 1335
    .local v6, "componentNameString":Ljava/lang/String;
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 1337
    .restart local v7    # "enabledService":Landroid/content/ComponentName;
    if-eqz v7, :cond_6

    .line 1338
    const/4 v4, 0x1

    .line 1345
    .end local v5    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v6    # "componentNameString":Ljava/lang/String;
    .end local v7    # "enabledService":Landroid/content/ComponentName;
    :cond_7
    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.samsung.settings.action.talkback_toggled"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1346
    const-string v17, "Utils Accessibility"

    const-string v18, "All sound off broadcast"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "accessibility_enabled"

    if-eqz v4, :cond_8

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1352
    const/16 v17, 0x1

    return v17

    .line 1349
    :cond_8
    const/16 v17, 0x0

    goto :goto_1
.end method

.method public static turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "option_flag"    # I

    .prologue
    .line 1736
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1739
    .local v12, "resolver":Landroid/content/ContentResolver;
    and-int/lit8 v17, p1, 0x20

    if-lez v17, :cond_0

    .line 1740
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    const-string v17, "assistant_menu"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1742
    new-instance v4, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1743
    .local v4, "assistantMenu":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.assistantmenu"

    const-string v19, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1745
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1746
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    .end local v4    # "assistantMenu":Landroid/content/Intent;
    :cond_0
    and-int/lit8 v17, p1, 0x10

    if-lez v17, :cond_2

    .line 1751
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x10"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const-string v17, "air_motion_engine"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1753
    new-instance v2, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1754
    .local v2, "air_motion_changed":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1755
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1758
    const-string v17, "air_motion_call_accept"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1759
    const-string v17, "air_motion_call_accept"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1760
    new-instance v10, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1761
    .local v10, "motion_changed_callaccept":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1762
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1764
    .end local v10    # "motion_changed_callaccept":Landroid/content/Intent;
    :cond_1
    const-string v17, "master_motion"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1765
    const-string v17, "air_motion_turn"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1766
    const-string v17, "air_motion_scroll"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1768
    new-instance v11, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1769
    .local v11, "motion_changed_scroll":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1770
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1772
    new-instance v9, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1773
    .local v9, "motion_changed_browse":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1774
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1784
    .end local v2    # "air_motion_changed":Landroid/content/Intent;
    .end local v9    # "motion_changed_browse":Landroid/content/Intent;
    .end local v11    # "motion_changed_scroll":Landroid/content/Intent;
    :cond_2
    and-int/lit8 v17, p1, 0x8

    if-lez v17, :cond_3

    .line 1785
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x08"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 1787
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 1799
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1800
    .local v5, "finger_air_view_changed":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1801
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1805
    .end local v5    # "finger_air_view_changed":Landroid/content/Intent;
    :cond_3
    and-int/lit8 v17, p1, 0x40

    if-lez v17, :cond_4

    .line 1806
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    const-string v17, "access_control_use"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1808
    const-string v17, "access_control_enabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1809
    new-instance v6, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1810
    .local v6, "icIntent":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.accesscontrol"

    const-string v19, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1812
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1813
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    .end local v6    # "icIntent":Landroid/content/Intent;
    :cond_4
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x800

    move/from16 v17, v0

    if-lez v17, :cond_6

    .line 1818
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x800"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    const-string v17, "com.samsung.android.app.sounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 1821
    const-string v17, "sound_detector"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1823
    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.android.settings.action.sound_detector"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1824
    .local v8, "mIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1825
    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.samsung.settings.action.sound_detector"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1827
    new-instance v13, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1828
    .local v13, "sdIntent":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.sounddetector"

    const-string v19, "com.samsung.android.app.sounddetector.service.SoundDetectService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1830
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1850
    .end local v8    # "mIntent":Landroid/content/Intent;
    .end local v13    # "sdIntent":Landroid/content/Intent;
    :cond_5
    :goto_1
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x800"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_6
    and-int/lit8 v17, p1, 0x4

    if-lez v17, :cond_7

    .line 1860
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x04"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    const-string v17, "pen_hovering"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1865
    :cond_7
    and-int/lit8 v17, p1, 0x2

    if-lez v17, :cond_8

    .line 1866
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x02"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    const-string v17, "intelligent_sleep_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1868
    const-string v17, "intelligent_rotation_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1869
    const-string v17, "smart_pause"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1870
    new-instance v14, Landroid/content/Intent;

    const-string v17, "com.sec.SMART_PAUSE_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1871
    .local v14, "smart_pause_changed":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1872
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1873
    const-string v17, "smart_scroll"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1874
    new-instance v15, Landroid/content/Intent;

    const-string v17, "com.sec.SMART_SCROLL_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1875
    .local v15, "smart_scroll_changed":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1876
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1886
    .end local v14    # "smart_pause_changed":Landroid/content/Intent;
    .end local v15    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_8
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-lez v17, :cond_9

    .line 1887
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x80"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const-string v17, "pen_writing_buddy"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1889
    const-string v17, "air_button_onoff"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1890
    const-string v17, "pen_detachment_option"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1891
    const-string v17, "pen_detachment_option"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1895
    :cond_9
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    if-lez v17, :cond_a

    .line 1896
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x100"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const-string v17, "surface_palm_swipe"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1908
    :cond_a
    const-string v17, "any_screen_enabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1909
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1910
    const-string v17, "sidesoftkey_switch"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1915
    :cond_b
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    if-lez v17, :cond_c

    .line 1916
    new-instance v3, Landroid/content/Intent;

    const-string v17, "android.settings.ALL_SOUND_MUTE"

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1917
    .local v3, "all_sound_off_intent":Landroid/content/Intent;
    const-string v17, "all_sound_off"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1918
    const-string v17, "mute"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1919
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1920
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - TurnOffAllSound in"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    .end local v3    # "all_sound_off_intent":Landroid/content/Intent;
    :cond_c
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x4000

    move/from16 v17, v0

    if-lez v17, :cond_d

    .line 1925
    const-string v17, "enabled_accessibility_samsung_screen_reader"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1926
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->turnOnOffScreenReader(Landroid/content/Context;Z)V

    .line 1927
    const-string v17, "Utils"

    const-string v18, "turnOnOffScreenReader - Screen reader off in"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    :cond_d
    const v17, 0x8000

    and-int v17, v17, p1

    if-lez v17, :cond_e

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1932
    const-string v17, "universal_switch_enabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1933
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->turnOnOffUniversalInput(Landroid/content/Context;Z)V

    .line 1934
    const-string v17, "Utils"

    const-string v18, "turnOnOffScreenReader - Screen reader off in"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    :cond_e
    const/high16 v17, 0x10000

    and-int v17, v17, p1

    if-lez v17, :cond_f

    .line 1939
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 1940
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBack - TalkBack off in"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_f
    const/high16 v17, 0x20000

    and-int v17, v17, p1

    if-lez v17, :cond_10

    .line 1950
    const-string v17, "finger_magnifier"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1951
    const-string v17, "Utils"

    const-string v18, "turnOffMagnifier - Magnifier off in"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    :cond_10
    const/high16 v17, 0x40000

    and-int v17, v17, p1

    if-lez v17, :cond_11

    .line 1955
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v17

    const-string v18, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1957
    .local v16, "str":Ljava/lang/String;
    if-eqz v16, :cond_16

    const-string v17, "panel"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 1958
    const-string v17, "edge_enable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1970
    .end local v16    # "str":Ljava/lang/String;
    :cond_11
    :goto_2
    const/high16 v17, 0x80000

    and-int v17, v17, p1

    if-lez v17, :cond_12

    .line 1971
    const-string v17, "accessibility_display_magnification_enabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1972
    const-string v17, "Utils"

    const-string v18, "turn off Magnification Gesture "

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    :cond_12
    const/high16 v17, 0x100000

    and-int v17, v17, p1

    if-lez v17, :cond_13

    .line 1976
    const-string v17, "aod_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1977
    const-string v17, "aod_night_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1978
    const-string v17, "Utils"

    const-string v18, "turnOffAOD - 0x100000"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :cond_13
    return-void

    .line 1794
    :cond_14
    const-string v17, "finger_air_view"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1795
    const-string v17, "finger_air_view_highlight"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1831
    :cond_15
    const-string v17, "com.samsung.android.app.advsounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1832
    const-string v17, "sound_detector"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1833
    const-string v17, "doorbell_detector"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1839
    new-instance v7, Landroid/content/Intent;

    const-string v17, "com.android.settings.action.doorbell_detector"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1840
    .local v7, "mDoorIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1841
    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.samsung.settings.action.doorbell_detector"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1843
    new-instance v13, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1844
    .restart local v13    # "sdIntent":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.advsounddetector"

    const-string v19, "com.samsung.android.app.advsounddetector.service.SoundDetectService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1847
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 1960
    .end local v7    # "mDoorIntent":Landroid/content/Intent;
    .end local v13    # "sdIntent":Landroid/content/Intent;
    .restart local v16    # "str":Ljava/lang/String;
    :cond_16
    const-string v17, "people_stripe"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1961
    const-string v17, "task_edge"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1962
    const-string v17, "Utils"

    const-string v18, "turnOffPeopleEdge - 0x40000"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getServiceStatus(Landroid/content/Context;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 1965
    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->serviceOff(Landroid/content/Context;I)V

    goto/16 :goto_2
.end method

.method public static turnOffUniversalSwitch(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v13, 0x3a

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1222
    invoke-static {p0}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return v9

    .line 1225
    :cond_1
    const/16 v0, 0x3a

    .line 1226
    .local v0, "ENABLED_SERVICES_SEPARATOR":C
    const-string v1, "com.samsung.android.universalswitch"

    .line 1227
    .local v1, "UNIVERSAL_SWITCH_NAME":Ljava/lang/String;
    new-instance v8, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v8, v13}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1229
    .local v8, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enabled_accessibility_services"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1231
    .local v7, "enabledServicesSetting":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1234
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1239
    .local v2, "builder":Ljava/lang/StringBuilder;
    move-object v4, v8

    .line 1240
    .local v4, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1242
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1243
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    .line 1245
    .local v5, "componentNameString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 1246
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1249
    :cond_3
    if-eqz v5, :cond_2

    const-string v11, "com.samsung.android.universalswitch"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1250
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1253
    .end local v5    # "componentNameString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enabled_accessibility_services"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enabled_accessibility_services"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1257
    .local v3, "checkEnabledServices":Ljava/lang/String;
    const/4 v6, 0x1

    .line 1259
    .local v6, "enabledAccessibilityServices":Z
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1260
    :cond_5
    const/4 v6, 0x0

    .line 1265
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_enabled"

    if-eqz v6, :cond_7

    move v9, v10

    :cond_7
    invoke-static {v11, v12, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v9, v10

    .line 1268
    goto :goto_0
.end method

.method public static turnOnAirMotionEngine(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 1021
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1023
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string v2, "air_motion_engine"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v4}, Lcom/android/settings/Utils;->isAllAirMotionDisabled(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1024
    const-string v2, "air_motion_engine"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1025
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v1, "motion_changed":Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1027
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1029
    .end local v1    # "motion_changed":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static turnOnMotionEngine(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 986
    const-string v2, "MotionSettings"

    const-string v3, "Utils.turnOnMotionEngine turn on Motion engine!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 988
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string v2, "motion_engine"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 989
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 990
    .local v1, "motion_changed":Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 991
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 992
    return-void
.end method

.method public static updateExternalTiles(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    const/4 v4, 0x0

    .line 493
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 504
    :cond_0
    :goto_0
    return v4

    .line 497
    :cond_1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 499
    .local v0, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settings/dashboard/DashboardTile;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 500
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 501
    .local v2, "user":Landroid/os/UserHandle;
    invoke-static {p0, p1, v2, v0}, Lcom/android/settings/Utils;->setExternalTiles(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;Landroid/os/UserHandle;Ljava/util/Map;)V

    goto :goto_1

    .line 503
    .end local v2    # "user":Landroid/os/UserHandle;
    :cond_2
    const-string v5, "Settings_Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addedCache.size()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentPreferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 455
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 456
    .local v5, "preference":Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 489
    :goto_0
    return v7

    .line 460
    :cond_0
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 461
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 463
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 464
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 465
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 466
    .local v3, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 467
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 468
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 472
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 476
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 478
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 481
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 466
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "listSize":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public static updateSelectedApnKey(Landroid/content/ContentResolver;Landroid/content/ContentValues;IJ)V
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "mSimSlot"    # I
    .param p3, "mSubId"    # J

    .prologue
    const/4 v2, 0x0

    .line 7400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7401
    return-void
.end method

.method public static updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4714
    if-nez p0, :cond_1

    .line 4715
    const-string v11, "WifiSettings/AdvancedWifiSettings/SettingsSearchUtils"

    const-string v12, "context is null."

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    const/4 v4, -0x1

    .line 4767
    :cond_0
    :goto_0
    return v4

    .line 4718
    :cond_1
    const-string v11, "connectivity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 4719
    .local v2, "mConnectivityManager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    .line 4721
    .local v4, "result":I
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v3

    .line 4723
    .local v3, "mMobilePolicyDataEnable":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_5

    const/4 v0, 0x1

    .line 4725
    .local v0, "isAirplaneMode":Z
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "mobile_data"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_6

    const/4 v1, 0x1

    .line 4727
    .local v1, "isMobileDataEnabled":Z
    :goto_2
    const/4 v5, 0x0

    .line 4728
    .local v5, "simState":I
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 4729
    .local v10, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v10, :cond_7

    .line 4730
    const/4 v5, 0x0

    .line 4731
    const-string v11, "Utils"

    const-string v12, "TelephonyManager is null."

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4753
    :cond_2
    :goto_3
    const/4 v11, 0x5

    if-eq v5, v11, :cond_e

    sget-boolean v11, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v11, :cond_3

    const-string v11, "SimCheck.disable"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 4756
    :cond_3
    const/4 v4, 0x2

    .line 4763
    :cond_4
    :goto_4
    sget-boolean v11, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v11, :cond_0

    const-string v12, "WifiSettings/AdvancedWifiSettings/SettingsSearchUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Checkbox - Airplane Mode Off / Mobile Data Enabled / SIM State-Ready / isMobilePolicyDataEnable / result : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v0, :cond_11

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " / "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " / "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v11, 0x5

    if-ne v5, v11, :cond_12

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " / "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " / "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4723
    .end local v0    # "isAirplaneMode":Z
    .end local v1    # "isMobileDataEnabled":Z
    .end local v5    # "simState":I
    .end local v10    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 4725
    .restart local v0    # "isAirplaneMode":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 4733
    .restart local v1    # "isMobileDataEnabled":Z
    .restart local v5    # "simState":I
    .restart local v10    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_8

    sget-boolean v11, Lcom/android/settings/Utils;->isMultiSim:Z

    if-eqz v11, :cond_d

    .line 4734
    :cond_8
    const-string v11, "gsm.sim.state"

    const-string v12, "-1,-1"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4735
    .local v8, "simStatus":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 4736
    .local v9, "simStatusInt":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 4737
    .local v6, "simState1":I
    const/4 v7, 0x0

    .line 4738
    .local v7, "simState2":I
    const-string v11, "READY"

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 4739
    const/4 v6, 0x5

    .line 4740
    :cond_9
    array-length v11, v9

    const/4 v12, 0x1

    if-le v11, v12, :cond_a

    const-string v11, "READY"

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 4741
    const/4 v7, 0x5

    .line 4742
    :cond_a
    const/4 v11, 0x5

    if-eq v6, v11, :cond_b

    const/4 v11, 0x5

    if-ne v7, v11, :cond_c

    .line 4743
    :cond_b
    const/4 v5, 0x5

    .line 4747
    :goto_7
    sget-boolean v11, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v11, :cond_2

    const-string v11, "WifiSettings/AdvancedWifiSettings/SettingsSearchUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "simState1 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", simState2 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", simState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4745
    :cond_c
    const/4 v5, 0x0

    goto :goto_7

    .line 4750
    .end local v6    # "simState1":I
    .end local v7    # "simState2":I
    .end local v8    # "simStatus":Ljava/lang/String;
    .end local v9    # "simStatusInt":[Ljava/lang/String;
    :cond_d
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    goto/16 :goto_3

    .line 4757
    :cond_e
    if-eqz v0, :cond_f

    .line 4758
    const/4 v4, 0x3

    goto/16 :goto_4

    .line 4759
    :cond_f
    if-eqz v1, :cond_10

    if-nez v3, :cond_4

    .line 4760
    :cond_10
    const/4 v4, 0x4

    goto/16 :goto_4

    .line 4763
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_6
.end method

.method public static updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    const/16 v13, 0x80

    const/4 v12, 0x0

    .line 549
    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 550
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_7

    .line 552
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 553
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v11, p1, Lcom/android/settings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p1, Lcom/android/settings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-virtual {v6, v2, v13, v11}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 557
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 558
    .local v4, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_7

    .line 559
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 560
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_6

    .line 562
    const/4 v1, 0x0

    .line 563
    .local v1, "icon":I
    const/4 v10, 0x0

    .line 564
    .local v10, "title":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 568
    .local v9, "summary":Ljava/lang/String;
    :try_start_0
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 570
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 572
    .local v5, "metaData":Landroid/os/Bundle;
    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    .line 573
    const-string v11, "com.android.settings.icon"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 574
    const-string v11, "com.android.settings.icon"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 576
    :cond_0
    const-string v11, "com.android.settings.title"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 577
    const-string v11, "com.android.settings.title"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 579
    :cond_1
    const-string v11, "com.android.settings.summary"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 580
    const-string v11, "com.android.settings.summary"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 590
    .end local v5    # "metaData":Landroid/os/Bundle;
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_2
    :goto_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 591
    invoke-virtual {v8, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 593
    :cond_3
    if-nez v1, :cond_4

    .line 594
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v11, Landroid/content/pm/ActivityInfo;->icon:I

    .line 600
    :cond_4
    iput-object v10, p1, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    .line 601
    iput-object v9, p1, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    .line 603
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    iput-object v11, p1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 606
    const/4 v11, 0x1

    .line 611
    .end local v0    # "i":I
    .end local v1    # "icon":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "listSize":I
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "summary":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :goto_3
    return v11

    .line 553
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    invoke-virtual {v6, v2, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    .line 558
    .restart local v0    # "i":I
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "listSize":I
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .end local v0    # "i":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "listSize":I
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_7
    move v11, v12

    .line 611
    goto :goto_3

    .line 584
    .restart local v0    # "i":I
    .restart local v1    # "icon":I
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "listSize":I
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "summary":Ljava/lang/String;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v11

    goto :goto_2

    :catch_1
    move-exception v11

    goto :goto_2
.end method

.method public static useGEDBattery(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 745
    const-string v0, "com.samsung.android.sm.ACTION_BATTERY"

    .line 746
    .local v0, "BATTERY_INTENT":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 748
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 749
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 752
    .local v2, "isBatteryAction":Z
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move v5, v4

    .line 755
    :cond_1
    return v5

    .end local v2    # "isBatteryAction":Z
    :cond_2
    move v2, v5

    .line 750
    goto :goto_0
.end method
