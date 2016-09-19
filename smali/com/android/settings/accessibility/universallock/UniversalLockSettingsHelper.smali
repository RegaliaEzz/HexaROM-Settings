.class public Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
.super Ljava/lang/Object;
.source "UniversalLockSettingsHelper.java"


# static fields
.field private static final mBuildCharacteristics:Ljava/lang/String;


# instance fields
.field public SETTINGS_ARROW_SIZE:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivity:Landroid/app/Activity;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mBuildCharacteristics:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 74
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0315

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    .line 79
    :goto_0
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 80
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 81
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 82
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c030e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    goto :goto_0
.end method

.method public static applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 355
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

    .line 356
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 357
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 358
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 359
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 360
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 368
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 363
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 364
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 365
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 314
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 315
    .local v2, "height":I
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 316
    .local v4, "width":I
    const/4 v3, 0x1

    .line 318
    .local v3, "inSampleSize":I
    if-gt v2, p3, :cond_0

    if-le v4, p2, :cond_1

    .line 320
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 321
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 326
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p3, :cond_1

    div-int v5, v1, v3

    if-le v5, p2, :cond_1

    .line 327
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 331
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "reqWidth"    # I
    .param p4, "reqHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 272
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 273
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 274
    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 277
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 280
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 282
    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 285
    .local v3, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 286
    .local v2, "returnBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 288
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v3, p3, p4, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 294
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 295
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 296
    const/4 v3, 0x0

    .line 300
    :cond_0
    :goto_0
    return-object v2

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 295
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 296
    const/4 v3, 0x0

    goto :goto_0

    .line 294
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 295
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 296
    const/4 v3, 0x0

    :cond_1
    throw v4
.end method

.method public getCurrentLockScreen()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    goto :goto_0
.end method

.method public getResIDForCurrentLockScreen()I
    .locals 5

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "mResID":I
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 97
    .local v1, "quality":I
    const-string v2, "UniversalLockSettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quality - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const v0, 0x7f0e0286

    .line 134
    :goto_0
    return v0

    .line 103
    :cond_0
    const v0, 0x7f0e0287

    goto :goto_0

    .line 106
    :cond_1
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 110
    :sswitch_0
    const v0, 0x7f0e0a7e

    .line 111
    goto :goto_0

    .line 115
    :sswitch_1
    const v0, 0x7f0e13b0

    .line 116
    goto :goto_0

    .line 118
    :sswitch_2
    const v0, 0x7f0e0262

    .line 119
    goto :goto_0

    .line 122
    :sswitch_3
    const v0, 0x7f0e027f

    .line 123
    goto :goto_0

    .line 127
    :sswitch_4
    const v0, 0x7f0e0282

    .line 128
    goto :goto_0

    .line 130
    :sswitch_5
    const v0, 0x7f0e0264

    goto :goto_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method public isMobileKeyboardCovered(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTablet()Z
    .locals 2

    .prologue
    .line 255
    sget-object v0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mBuildCharacteristics:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public launchConfirmCurrentLockScreen(Z)Z
    .locals 9
    .param p1, "switchState"    # Z

    .prologue
    const/16 v5, 0x1000

    const/4 v8, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getCurrentLockScreen()I

    move-result v3

    .line 175
    .local v3, "quality":I
    const/4 v1, 0x0

    .line 176
    .local v1, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 177
    .local v4, "returnVal":Z
    const/4 v0, 0x0

    .line 183
    .local v0, "activityLaunched":Z
    if-nez p1, :cond_1

    if-ne v3, v5, :cond_1

    .line 184
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 186
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const/16 v6, 0x66

    invoke-virtual {v5, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 188
    const/4 v0, 0x1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    if-nez p1, :cond_2

    if-eq v3, v5, :cond_2

    .line 196
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "universal_lock_switch_state"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :cond_2
    if-eqz p1, :cond_0

    .line 207
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v6, 0x65

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v4

    .line 210
    move v0, v4

    .line 216
    if-nez v4, :cond_0

    .line 217
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 219
    .local v2, "intent1":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 220
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldDirectionLockBeDisabled()Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchToSwipe()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_switch_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    return-void
.end method
