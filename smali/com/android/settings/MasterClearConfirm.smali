.class public Lcom/android/settings/MasterClearConfirm;
.super Lcom/android/settings/InstrumentedFragment;
.source "MasterClearConfirm.java"


# static fields
.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private final ACCOUNT_CONTENT_URI:Landroid/net/Uri;

.field private mCanEraseExternalOnFuseSystem:Z

.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mEraseSdCardId:Ljava/lang/String;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 93
    iput-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCardId:Ljava/lang/String;

    .line 95
    iput-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    .line 110
    const-string v0, "content://com.sec.android.spc.easysetup.account.AccountContentProvider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 124
    new-instance v0, Lcom/android/settings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearConfirm$1;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private StartPassword()V
    .locals 4

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "phone_password":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 389
    const v1, 0x7f0e133f

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e1341

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 392
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClearConfirm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->isPowerOffAllowedByMDM()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClearConfirm;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClearConfirm;->sendAuditLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->doSecMasterClear()V

    return-void
.end method

.method private checkFmmRemoteControlOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remote_control"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 550
    .local v0, "ret":Z
    :cond_0
    const-string v1, "MasterClearConfirm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote_control value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 553
    const-string v1, "MasterClearConfirm"

    const-string v2, "There is no FMM package : ret = false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v0, 0x0

    .line 557
    :cond_1
    return v0
.end method

.method private checkReactivationLock()Z
    .locals 5

    .prologue
    .line 533
    const/4 v1, 0x0

    .line 534
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    sget-object v2, Lcom/android/settings/MasterClearConfirm;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    .line 536
    .local v0, "lmmFlag":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 537
    const/4 v1, 0x1

    .line 542
    const-string v2, "MasterClearConfirm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "lmmFlag":I
    :cond_0
    move v2, v1

    .line 545
    :goto_0
    return v2

    .line 540
    .restart local v0    # "lmmFlag":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private doMasterClear()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 218
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    iget-object v5, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v6, 0x7f0d034e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v7, "isFactoryResetAllowed"

    invoke-static {v5, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 229
    .local v3, "isFactoryResetAllowed":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    if-ne v3, v8, :cond_1

    .line 235
    :cond_3
    invoke-direct {p0, v9}, Lcom/android/settings/MasterClearConfirm;->sendAuditLog(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->checkReactivationLock()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 238
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v4, "mIntent":Landroid/content/Intent;
    const-string v5, "com.osp.app.signin"

    const-string v6, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v5, "MODE"

    const-string v6, "REMOTE_CONTROLS"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v5, "RL_MODE"

    const-string v6, "UNLOCK"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const/16 v5, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/MasterClearConfirm;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v4    # "mIntent":Landroid/content/Intent;
    :cond_4
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v5, :cond_6

    .line 259
    iget-boolean v5, p0, Lcom/android/settings/MasterClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    if-eqz v5, :cond_1

    .line 261
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.os.storage.extra.DISK_ID"

    iget-object v6, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCardId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v5, "from_factory_reset"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    const-string v5, "MasterClearConfirm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mEraseSdCardId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCardId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/16 v5, 0x6f

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/MasterClearConfirm;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 244
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 247
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->checkFmmRemoteControlOn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 248
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 249
    .restart local v4    # "mIntent":Landroid/content/Intent;
    const-string v5, "com.osp.app.signin"

    const-string v6, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v5, "MODE"

    const-string v6, "REMOTE_CONTROLS"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const/16 v5, 0x3e9

    :try_start_1
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/MasterClearConfirm;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 253
    :catch_1
    move-exception v1

    .line 254
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 271
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "mIntent":Landroid/content/Intent;
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->checkReactivationLock()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->checkFmmRemoteControlOn()Z

    move-result v5

    if-nez v5, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 274
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/MasterClearModemReset;

    invoke-direct {v2, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "FACTORY"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    const-string v5, "WIPE_EXTERNAL_STORAGE"

    iget-boolean v6, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method private doSecMasterClear()V
    .locals 3

    .prologue
    .line 284
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "phone_password":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->StartPassword()V

    .line 301
    .end local v0    # "phone_password":Ljava/lang/String;
    :goto_0
    return-void

    .line 292
    .restart local v0    # "phone_password":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->doMasterClear()V

    goto :goto_0

    .line 295
    .end local v0    # "phone_password":Ljava/lang/String;
    :cond_1
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->storeResetDate()V

    .line 298
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->doMasterClear()V

    goto :goto_0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0d034e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 463
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    return-void
.end method

.method private isPowerOffAllowedByMDM()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 195
    new-array v1, v3, [Ljava/lang/String;

    const-string v4, "true"

    aput-object v4, v1, v2

    .line 196
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isPowerOffAllowed"

    invoke-static {v4, v5, v6, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 199
    .local v0, "isPowerOffAllowed":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2
.end method

.method private sendAuditLog(Ljava/lang/String;)V
    .locals 5
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string v2, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 205
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "severity"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v2, "group"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string v2, "outcome"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 209
    const-string v2, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v2, "component"

    const-string v3, "FactoryReset"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v2, "message"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " User Interaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 214
    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 5

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 497
    .local v2, "currentTitle":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v4, 0x7f0d034d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 499
    .local v1, "confirmationMessage":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "accessibileText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 504
    .end local v0    # "accessibileText":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private storeResetDate()V
    .locals 9

    .prologue
    .line 304
    const-string v1, "/efs/sec_efs/LastResetDate.txt"

    .line 305
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 306
    .local v2, "formatter":Ljava/text/DateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, "string":Ljava/lang/String;
    const/4 v3, 0x0

    .line 310
    .local v3, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v5, "resolveMe":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 313
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 314
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 317
    :cond_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .end local v3    # "fw":Ljava/io/FileWriter;
    .local v4, "fw":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 322
    if-eqz v4, :cond_3

    .line 324
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 329
    .end local v4    # "fw":Ljava/io/FileWriter;
    .end local v5    # "resolveMe":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :cond_1
    :goto_0
    return-void

    .line 325
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "resolveMe":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 327
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_0

    .line 319
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "resolveMe":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    if-eqz v3, :cond_1

    .line 324
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 325
    :catch_2
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 322
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v3, :cond_2

    .line 324
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 327
    :cond_2
    :goto_3
    throw v7

    .line 325
    :catch_3
    move-exception v0

    .line 326
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 322
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "resolveMe":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .line 319
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :cond_3
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 528
    const/16 v0, 0x43

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 406
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 408
    const/16 v3, 0x65

    if-ne p1, v3, :cond_1

    .line 409
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    if-ne p2, v5, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->doMasterClear()V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_3

    .line 416
    if-ne p2, v5, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->checkReactivationLock()Z

    move-result v2

    .line 418
    .local v2, "isReactivationLock":Z
    const-string v3, "MasterClearConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reactivation lock is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-nez v2, :cond_2

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_my_mobile"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.reactivationlock_off"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "MasterClearConfirm"

    const-string v4, " onActivityResult[reactivationlock_off]"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 428
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 429
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/MasterClearModemReset;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 430
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "FACTORY"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 431
    const-string v3, "WIPE_EXTERNAL_STORAGE"

    iget-boolean v4, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 435
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isReactivationLock":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->checkFmmRemoteControlOn()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x3e9

    if-ne p1, v3, :cond_4

    .line 436
    if-ne p2, v5, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 441
    .restart local v0    # "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/MasterClearModemReset;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "FACTORY"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    const-string v3, "WIPE_EXTERNAL_STORAGE"

    iget-boolean v4, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 447
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    const/16 v3, 0x6f

    if-ne p1, v3, :cond_0

    .line 448
    if-ne p2, v5, :cond_0

    .line 449
    const-string v3, "MasterClearConfirm"

    const-string v4, "Success to clear SD card."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iput-boolean v6, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    .line 451
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->doMasterClear()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 508
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/MasterClearConfirm;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 515
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 516
    const-string v1, "can_erase_sd_on_fuse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    .line 517
    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    .line 518
    const-string v1, "erase_sd_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCardId:Ljava/lang/String;

    .line 519
    const-string v1, "MasterClearConfirm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCanEraseExternalOnFuseSystem= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/MasterClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v1, "MasterClearConfirm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEraseSdCard= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v1, "MasterClearConfirm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEraseSdCardId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCardId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_1
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 524
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    const v0, 0x7f04013a

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    .line 473
    :cond_0
    const v0, 0x7f040139

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 474
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 475
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->setAccessibilityTitle()V

    .line 476
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 483
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v4, "isFactoryResetAllowed"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 488
    .local v0, "isFactoryResetAllowed":I
    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 489
    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-ne v0, v1, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 492
    :cond_1
    return-void

    .line 489
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "requestCode"    # I

    .prologue
    .line 395
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 396
    .local v0, "pickIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0, v0, p4}, Lcom/android/settings/MasterClearConfirm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 401
    return-void
.end method
