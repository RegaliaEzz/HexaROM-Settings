.class public Lcom/android/settings/encryption/CryptSDCardSettings;
.super Landroid/preference/PreferenceFragment;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
    }
.end annotation


# instance fields
.field private MDPP_PROPERTY:Ljava/lang/String;

.field private mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

.field private mApplyButton:Landroid/widget/Button;

.field private mApplyButtonSelected:Z

.field private mContentView:Landroid/view/View;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mDescriptionLayout:Landroid/widget/LinearLayout;

.field private mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

.field private mEnableDisableButton:Landroid/widget/Button;

.field private mEnableDisableButtonSelected:Z

.field private mEncryptDefault:Z

.field private mEncryptExcludeMedia:Z

.field private mEncryptFull:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsDisabledByAdmin:Z

.field private mParent:Landroid/app/Activity;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressLayout:Landroid/widget/LinearLayout;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressStoarge:Landroid/widget/TextView;

.field private mProgressValue:I

.field private mSDLayout:Landroid/widget/LinearLayout;

.field private mSdCardEnc2Messages:Landroid/widget/TextView;

.field private mSdCardLine1:Landroid/view/View;

.field private mSdCardLine2:Landroid/view/View;

.field private mSdCardSelectedOptionMessages:Landroid/widget/TextView;

.field private mStartedByAdmin:Z

.field private mStartedByIntent:Z

.field private mStorageValue:I

.field private mSync:Ljava/lang/Object;

.field private mTextDesc:Landroid/widget/TextView;

.field private mTextEncMessages2:Landroid/widget/TextView;

.field private mThis:Landroid/app/Fragment;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

.field private mValueChanged:Z

.field private serviceBusy:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    .line 61
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    .line 62
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    .line 63
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardEnc2Messages:Landroid/widget/TextView;

    .line 64
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardLine1:Landroid/view/View;

    .line 65
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardLine2:Landroid/view/View;

    .line 77
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 78
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 79
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 81
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages2:Landroid/widget/TextView;

    .line 82
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    .line 83
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    .line 84
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 85
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 86
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 88
    iput v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    .line 89
    iput v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    .line 98
    new-instance v0, Lcom/android/settings/encryption/CryptSDCardSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$1;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->checkProgress()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/encryption/CryptSDCardSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/encryption/CryptSDCardSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/encryption/CryptSDCardSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/settings/encryption/CryptSDCardSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButtonSelected:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->applyEncryptionUpdates()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/settings/encryption/CryptSDCardSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButtonSelected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->updateProgress()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->finishProgress()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/encryption/CryptSDCardSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/encryption/CryptSDCardSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    return v0
.end method

.method private applyEncryptionUpdates()V
    .locals 4

    .prologue
    const/16 v3, 0x37

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 485
    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-nez v0, :cond_2

    .line 486
    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButtonSelected:Z

    if-ne v0, v2, :cond_0

    .line 487
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButtonSelected:Z

    .line 488
    invoke-direct {p0, v3}, Lcom/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    .line 506
    :goto_0
    return-void

    .line 490
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 491
    const-string v0, "Enforcing"

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    goto :goto_0

    .line 494
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    goto :goto_0

    .line 498
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v0

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButtonSelected:Z

    if-ne v0, v2, :cond_4

    .line 499
    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 500
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 501
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 502
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButtonSelected:Z

    .line 504
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    goto :goto_0
.end method

.method private checkProgress()V
    .locals 3

    .prologue
    .line 646
    const-string v1, "checkProgress"

    invoke-direct {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 647
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getLastError()I

    move-result v0

    .line 648
    .local v0, "error":I
    sparse-switch v0, :sswitch_data_0

    .line 657
    :goto_0
    return-void

    .line 652
    :sswitch_0
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 653
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 654
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->updatePrefUI()V

    goto :goto_0

    .line 648
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private disableButtonUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 576
    const-string v0, "disableButtonUI"

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 578
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 579
    return-void
.end method

.method private doEncryptSDCard()V
    .locals 5

    .prologue
    .line 660
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    :goto_2
    invoke-direct {v0, v1, v2, v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 664
    .local v0, "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doEncryptSDCard - enc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fullEnc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " excludeMedia : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget v4, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    .line 667
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;->encryptStorage(Ljava/lang/String;)I

    .line 668
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 669
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 670
    return-void

    .line 660
    .end local v0    # "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_1

    :cond_2
    const/4 v3, 0x7

    goto :goto_2
.end method

.method private enableAllUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 568
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 570
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 572
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->updatePrefUI()V

    .line 573
    return-void
.end method

.method private finishProgress()V
    .locals 6

    .prologue
    const v5, 0x7f0e103a

    const v4, 0x7f0e1039

    const v3, 0x7f0e102d

    const v2, 0x7f0e102b

    .line 615
    const-string v1, "finishProgress"

    invoke-direct {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 618
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 621
    :cond_0
    iget v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "totalStorage":Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    .line 623
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v1, :cond_2

    .line 624
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 626
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 640
    :goto_0
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 641
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    const-string v2, "100%"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    return-void

    .line 628
    :cond_1
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 629
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 632
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz v1, :cond_3

    .line 633
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 634
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 636
    :cond_3
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 637
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private initProgress()V
    .locals 2

    .prologue
    .line 582
    const-string v0, "initProgress"

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d0159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages2:Landroid/widget/TextView;

    .line 587
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    .line 588
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    .line 589
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 591
    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v1, 0x7f0e102b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 593
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages2:Landroid/widget/TextView;

    const v1, 0x7f0e1037

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 598
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v1, 0x7f0e102d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 596
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages2:Landroid/widget/TextView;

    const v1, 0x7f0e1038

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private initVariables()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 553
    const-string v0, "initialize Variables"

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 554
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 555
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 556
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 557
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    .line 558
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    .line 559
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    .line 560
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mValueChanged:Z

    .line 561
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButtonSelected:Z

    .line 562
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButtonSelected:Z

    .line 563
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->init()V

    .line 564
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->init()V

    .line 565
    return-void
.end method

.method private isAdminApplied()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 257
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 258
    .local v0, "adminPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 259
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 261
    .local v2, "isDisabledByAdmin":Z
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    iput v5, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 263
    const/4 v3, 0x4

    iput v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 266
    :cond_0
    iget v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v5, v3, :cond_1

    .line 267
    const/4 v2, 0x1

    .line 270
    :cond_1
    return v2
.end method

.method private isEncryptionApplied()Z
    .locals 4

    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 326
    .local v0, "pol":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "state":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 329
    const/4 v2, 0x1

    .line 331
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string v0, "CryptKeeperSDSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method private restorePrefs()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 275
    const-string v4, "restorePrefs"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 276
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 277
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_5

    .line 278
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v4, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 280
    const-string v4, "adminStart"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "adminStart":Ljava/lang/String;
    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    .line 282
    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    .line 296
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "adminStart":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 297
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    if-nez v4, :cond_1

    .line 298
    new-instance v4, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 301
    :cond_1
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v7, "device_policy"

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 302
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 303
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iput v8, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 304
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iput v9, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 307
    :cond_2
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_6

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 308
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v9, v4, :cond_7

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 309
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v10, v4, :cond_8

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 311
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_9

    move v4, v5

    :goto_4
    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 312
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v9, v4, :cond_a

    move v4, v5

    :goto_5
    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 313
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v10, v4, :cond_b

    move v4, v5

    :goto_6
    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 315
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_3

    .line 316
    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    .line 317
    const-string v4, "Disabled by Admin"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 320
    :cond_3
    iput-boolean v6, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mValueChanged:Z

    .line 321
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V

    .line 322
    return-void

    .line 286
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_4
    const-string v4, "CryptSDCardSettings started by user"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    .end local v0    # "action":Ljava/lang/String;
    :cond_5
    const-string v4, "CryptSDCardSettings started by user"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_6
    move v4, v6

    .line 307
    goto :goto_1

    :cond_7
    move v4, v6

    .line 308
    goto :goto_2

    :cond_8
    move v4, v6

    .line 309
    goto :goto_3

    :cond_9
    move v4, v6

    .line 311
    goto :goto_4

    :cond_a
    move v4, v6

    .line 312
    goto :goto_5

    :cond_b
    move v4, v6

    .line 313
    goto :goto_6
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .param p1, "request"    # I

    .prologue
    const/4 v2, 0x1

    .line 541
    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 542
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 543
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 545
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    .line 549
    :goto_0
    return v2

    :cond_0
    const v3, 0x7f0e022f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    goto :goto_0
.end method

.method private updatePrefUI()V
    .locals 14

    .prologue
    .line 335
    const-string v10, "updatePrefUI"

    invoke-direct {p0, v10}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 336
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 337
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v0, "desc":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 340
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    if-nez v10, :cond_0

    .line 341
    const-string v10, "parent activity is null, cannot display UI, removing fragment"

    invoke-direct {p0, v10}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 343
    .local v2, "mgr":Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 482
    .end local v2    # "mgr":Landroid/app/FragmentManager;
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-boolean v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v10, :cond_8

    .line 348
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v11, 0x7f0e1032

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 353
    :goto_1
    iget-boolean v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-nez v10, :cond_9

    .line 354
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    const v11, 0x7f0e1033

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 355
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 364
    :cond_1
    :goto_2
    iget-boolean v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-nez v10, :cond_2

    const-string v10, "Enabled"

    iget-object v11, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 365
    :cond_2
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 366
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 367
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 371
    :cond_3
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v10}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v9

    .line 372
    .local v9, "status":I
    if-eqz v9, :cond_a

    .line 373
    const-string v10, "Service is busy: Disabling UI"

    invoke-direct {p0, v10}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 374
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 375
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->disableButtonUI()V

    .line 376
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 389
    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v10}, Landroid/dirEncryption/DirEncryptionManager;->getLastError()I

    move-result v1

    .line 391
    .local v1, "error":I
    sparse-switch v1, :sswitch_data_0

    .line 436
    :goto_4
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v10}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v8

    .line 437
    .local v8, "state":Ljava/lang/String;
    if-nez v8, :cond_11

    .line 439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_5

    .line 440
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    :cond_5
    const v10, 0x7f0e103c

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 444
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 445
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 474
    :cond_6
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_7

    .line 475
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    :cond_7
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 478
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    .line 350
    .end local v1    # "error":I
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "status":I
    :cond_8
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v11, 0x7f0e1031

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 357
    :cond_9
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    const v11, 0x7f0e1034

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 358
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 359
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 378
    .restart local v9    # "status":I
    :cond_a
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 379
    const-string v10, "Service is not busy"

    invoke-direct {p0, v10}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 381
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 383
    :cond_b
    iget v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    if-eqz v10, :cond_4

    .line 384
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->finishProgress()V

    goto/16 :goto_3

    .line 394
    .restart local v1    # "error":I
    :sswitch_0
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v10}, Landroid/dirEncryption/DirEncryptionManager;->getAdditionalSpaceRequired()I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double v6, v10, v12

    .line 395
    .local v6, "spaceInMB":D
    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    div-double v4, v6, v10

    .line 397
    .local v4, "spaceInGB":D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "spaceInMB: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 398
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "spaceInGB: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 400
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v6, v10

    if-gez v10, :cond_c

    .line 401
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 404
    :cond_c
    iget-boolean v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v10, :cond_e

    .line 405
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v4, v10

    if-gez v10, :cond_d

    .line 406
    const v10, 0x7f0e1072

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :goto_6
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4

    .line 408
    :cond_d
    const v10, 0x7f0e1070

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 411
    :cond_e
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v4, v10

    if-gez v10, :cond_f

    .line 412
    const v10, 0x7f0e1073

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 414
    :cond_f
    const v10, 0x7f0e1071

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 421
    .end local v4    # "spaceInGB":D
    .end local v6    # "spaceInMB":D
    :sswitch_1
    const v10, 0x7f0e1074

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4

    .line 426
    :sswitch_2
    iget-boolean v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v10, :cond_10

    .line 427
    const v10, 0x7f0e1074

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :goto_7
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4

    .line 429
    :cond_10
    const v10, 0x7f0e1075

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 446
    .restart local v8    # "state":Ljava/lang/String;
    :cond_11
    const-string v10, "removed"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 447
    const-string v10, "HiddenMount"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    iget-boolean v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-nez v10, :cond_14

    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_12

    .line 449
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    :cond_12
    iget-boolean v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v10, :cond_17

    .line 452
    iget-boolean v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-nez v10, :cond_13

    const-string v10, "Enabled"

    iget-object v11, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 453
    :cond_13
    const v10, 0x7f0e104c

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :goto_8
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 467
    :cond_14
    iget-boolean v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-eqz v10, :cond_6

    .line 468
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_15

    .line 469
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    :cond_15
    const v10, 0x7f0e104e

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 455
    :cond_16
    const v10, 0x7f0e105a

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 458
    :cond_17
    iget-boolean v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-nez v10, :cond_18

    const-string v10, "Enabled"

    iget-object v11, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 459
    :cond_18
    const v10, 0x7f0e104b

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :goto_9
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8

    .line 461
    :cond_19
    const v10, 0x7f0e1059

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 480
    :cond_1a
    iget-object v10, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    .line 391
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_2
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method private updateProgress()V
    .locals 5

    .prologue
    .line 601
    const-string v2, "updateProgress"

    invoke-direct {p0, v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 602
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v2, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 607
    :cond_0
    iget v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "totalStorage":Ljava/lang/String;
    iget v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    iget v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "remainStorage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 610
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 510
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 511
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "state":Ljava/lang/String;
    const/16 v1, 0x37

    if-eq p1, v1, :cond_0

    .line 529
    :goto_0
    return-void

    .line 518
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 525
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    goto :goto_0

    .line 527
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 168
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    .line 169
    iput-object p0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mThis:Landroid/app/Fragment;

    .line 170
    const-string v0, "onAttach"

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    const v1, 0x7f04007e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    .line 177
    const-string v1, "security.mdpp"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 180
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0154

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0156

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    .line 186
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0157

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    .line 187
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0155

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayout:Landroid/widget/LinearLayout;

    .line 188
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0153

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    .line 189
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0158

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    .line 191
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/encryption/CryptSDCardSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$2;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/encryption/CryptSDCardSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$3;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    return-object v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 211
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 213
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "state":Ljava/lang/String;
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isAdminApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "SD card is unmounted, mount SD card"

    invoke-direct {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;->SetMountSDcardToHelper(Z)V

    .line 217
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->mountVolume()Z

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initVariables()V

    .line 221
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    const v2, 0x7f0e1045

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 222
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    const v2, 0x7f0e1046

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 224
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getPolicyChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;->setPolicyChanged(Z)V

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    .line 229
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 235
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-nez v0, :cond_1

    .line 240
    new-instance v0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-direct {v0, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 241
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 244
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 249
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 254
    :cond_0
    return-void
.end method
