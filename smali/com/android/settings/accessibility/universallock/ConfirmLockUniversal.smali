.class public Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;
.super Landroid/app/Activity;
.source "ConfirmLockUniversal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$13;,
        Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;
    }
.end annotation


# instance fields
.field private ANIMATION_DURATION:I

.field private ARROW_STEPCIRCLE_THRESHOLD:I

.field private STEP_CIRCLE_LEFT_MARGIN:I

.field private STEP_CIRCLE_RIGHT_MARGIN:I

.field private STEP_CIRCLE_SIZE:I

.field _listener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mBackUpPinButton:Landroid/widget/Button;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentPwd:Ljava/lang/String;

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mEffectiveUserId:I

.field private mEmptyString:Ljava/lang/String;

.field private mFlagForEnabled:Z

.field private mFlgToChkConfChng:Z

.field private mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyListAnimator:Landroid/animation/ValueAnimator;

.field private mGreyStepCircleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderString:Ljava/lang/String;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mLeftBtnState:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewStepCircle:Landroid/widget/ImageView;

.field private mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

.field private mNumWrongAttempt:I

.field private mNumWrongConfirmAttempts:I

.field private mOldStepCircle:Landroid/widget/ImageView;

.field private mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mRightBtnState:Z

.field private mRightButton:Landroid/widget/Button;

.field private mStepCircleDown:Landroid/graphics/Bitmap;

.field private mStepCircleLayout:Landroid/widget/LinearLayout;

.field private mStepCircleLeft:Landroid/graphics/Bitmap;

.field private mStepCircleRight:Landroid/graphics/Bitmap;

.field private mStepCircleUp:Landroid/graphics/Bitmap;

.field private mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

.field private playBeep:Z

.field private playVibration:Z

.field private playVoice:Z

.field private showArrow:Z

.field private stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 140
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    .line 141
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mEmptyString:Ljava/lang/String;

    .line 163
    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlgToChkConfChng:Z

    .line 164
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCurrentPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderString:Ljava/lang/String;

    .line 165
    iput v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongAttempt:I

    .line 166
    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftBtnState:Z

    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightBtnState:Z

    .line 222
    new-instance v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    .line 972
    new-instance v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$11;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$11;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/internal/widget/DirectionLockView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->clearStepCircles()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->checkForCorrectPassword()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;ZLandroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->onDirectionChecking(ZLandroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;
    .param p1, "x1"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleStepCircle(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private attachListeners()V
    .locals 2

    .prologue
    .line 555
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "attachListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$7;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$7;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mBackUpPinButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 597
    return-void
.end method

.method private checkForCorrectPassword()V
    .locals 5

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_challenge"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 711
    .local v1, "verifyChallenge":Z
    const-string v2, "ConfirmLockUniversal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForCorrectPassword verifyChallenge:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 713
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 714
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V

    .line 723
    :goto_0
    return-void

    .line 719
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private clearStepCircles()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 617
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "clearStepCircles"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 628
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 630
    :cond_3
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    .line 631
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    .line 632
    return-void
.end method

.method private endOngoingAnimations()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 757
    :cond_1
    return-void
.end method

.method private freeUpMemory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1044
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "freeUpMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1048
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1053
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1057
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1058
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    .line 1061
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1062
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1063
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    .line 1065
    :cond_3
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 1002
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "handleAttemptLockout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    sget-object v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->LockedOut:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    .line 1004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1005
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1041
    return-void
.end method

.method private handleStepCircle(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "curDirection"    # Ljava/lang/String;
    .param p2, "redrawUIMode"    # Z

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x0

    .line 766
    const-string v1, "ConfirmLockUniversal"

    const-string v3, "handleStepCircle"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v0, 0x0

    .line 770
    .local v0, "mNewStepCircleBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    .line 775
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 781
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    .line 783
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 822
    :goto_1
    return-void

    .line 783
    :sswitch_0
    const-string v3, "UP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v3, "LEFT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "RIGHT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "DOWN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    .line 785
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    .line 800
    :goto_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 801
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 803
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 804
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 806
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 809
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_4

    .line 810
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 814
    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_LEFT_MARGIN:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_RIGHT_MARGIN:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 815
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    if-nez p2, :cond_5

    .line 818
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->performAnimations()V

    goto :goto_1

    .line 788
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    .line 789
    goto :goto_2

    .line 791
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    .line 792
    goto :goto_2

    .line 794
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    .line 795
    goto :goto_2

    .line 820
    :cond_5
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 783
    nop

    :sswitch_data_0
    .sparse-switch
        0xa9b -> :sswitch_0
        0x201ca2 -> :sswitch_3
        0x239807 -> :sswitch_1
        0x4a5c9fc -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initializeAnimations()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 375
    const-string v2, "ConfirmLockUniversal"

    const-string v3, "initializeAnimations"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v8, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    .line 379
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 380
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 383
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    .line 384
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 385
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 388
    new-array v2, v9, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    .line 389
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 390
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 391
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    mul-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 393
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$2;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$2;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 402
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$3;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$3;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0309

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c030b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c030c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-double v0, v2

    .line 430
    .local v0, "stepCircleAnimationTolerance":D
    new-array v2, v9, [F

    const/4 v3, 0x0

    double-to-float v4, v0

    aput v4, v2, v3

    aput v6, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    .line 431
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 432
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    mul-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 433
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$4;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$4;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 447
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$5;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$5;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 469
    return-void

    .line 388
    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initializeDirectionView()V
    .locals 2

    .prologue
    .line 306
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "initializeDirectionView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    .line 309
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    iget v1, v1, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    .line 310
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->setSettingsMode()V

    .line 313
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->reloadBitmap()V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->showArrow:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playVoice:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playVibration:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playBeep:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    .line 322
    return-void
.end method

.method private initializing()V
    .locals 2

    .prologue
    .line 176
    const v1, 0x7f040069

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setContentView(I)V

    .line 177
    const v1, 0x7f0e0a8b

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 178
    .local v0, "msg":Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 179
    invoke-static {p0}, Lcom/android/settings/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mEffectiveUserId:I

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializeIdentifiers()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->loadCustomSettings()V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializeDirectionView()V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->loadStepCircleVariables()V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializeAnimations()V

    .line 186
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setInitialState()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->attachListeners()V

    .line 189
    return-void
.end method

.method private isVibrationSupport()Z
    .locals 2

    .prologue
    .line 293
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 294
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-static {p0}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    :cond_0
    const/4 v1, 0x0

    .line 297
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadCustomSettings()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 267
    const-string v0, "ConfirmLockUniversal"

    const-string v3, "loadCustomSettings"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "universal_lock_voice"

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playVoice:Z

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "universal_lock_beep"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playBeep:Z

    .line 285
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->isVibrationSupport()Z

    move-result v0

    if-nez v0, :cond_3

    .line 286
    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playVibration:Z

    .line 289
    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->showArrow:Z

    .line 290
    return-void

    :cond_1
    move v0, v1

    .line 280
    goto :goto_0

    :cond_2
    move v0, v1

    .line 283
    goto :goto_1

    .line 288
    :cond_3
    iput-boolean v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playVibration:Z

    goto :goto_2
.end method

.method private loadStepCircleVariables()V
    .locals 5

    .prologue
    .line 331
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "loadStepCircleVariables"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const v0, 0x7f0d0112

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0309

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c030b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_LEFT_MARGIN:I

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_RIGHT_MARGIN:I

    .line 343
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c8

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    .line 348
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cb

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    .line 352
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c9

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    .line 356
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ca

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 366
    return-void
.end method

.method private onDirectionChecking(ZLandroid/content/Intent;I)V
    .locals 4
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I

    .prologue
    .line 733
    if-eqz p1, :cond_0

    .line 734
    const/4 v2, -0x1

    invoke-virtual {p0, v2, p2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setResult(ILandroid/content/Intent;)V

    .line 735
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->finish()V

    .line 749
    :goto_0
    return-void

    .line 736
    :cond_0
    iget v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 738
    if-lez p3, :cond_1

    .line 739
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 740
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleAttemptLockout(J)V

    goto :goto_0

    .line 742
    .end local v0    # "deadline":J
    :cond_1
    sget-object v2, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlockWrong:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    .line 743
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->postClearPatternRunnable()V

    goto :goto_0

    .line 746
    :cond_2
    sget-object v2, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlockWrong:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    .line 747
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->postClearPatternRunnable()V

    goto :goto_0
.end method

.method private performAnimations()V
    .locals 2

    .prologue
    .line 830
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "performAnimations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 840
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 842
    :cond_2
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 2

    .prologue
    .line 986
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "postClearPatternRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 989
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 990
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 991
    return-void
.end method

.method private setInitialState()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 478
    const-string v3, "ConfirmLockUniversal"

    const-string v4, "setInitialState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    sget-object v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlock:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    .line 482
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 483
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 485
    iget-boolean v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlgToChkConfChng:Z

    if-eqz v3, :cond_5

    .line 486
    iput-boolean v5, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlgToChkConfChng:Z

    .line 487
    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongAttempt:I

    iput v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    .line 488
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCurrentPwd:Ljava/lang/String;

    .line 491
    .local v2, "savedPassword":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 492
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 493
    iput-boolean v6, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlagForEnabled:Z

    .line 498
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    const-string v0, ""

    .line 501
    .local v0, "curDirection":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/DirectionLockView;->setCurrentPassword(Ljava/lang/String;)V

    .line 503
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 505
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 521
    :goto_2
    invoke-direct {p0, v0, v6}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleStepCircle(Ljava/lang/String;Z)V

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 495
    .end local v0    # "curDirection":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlagForEnabled:Z

    goto :goto_0

    .line 507
    .restart local v0    # "curDirection":Ljava/lang/String;
    .restart local v1    # "i":I
    :sswitch_0
    const-string v0, "UP"

    .line 508
    goto :goto_2

    .line 510
    :sswitch_1
    const-string v0, "RIGHT"

    .line 511
    goto :goto_2

    .line 513
    :sswitch_2
    const-string v0, "DOWN"

    .line 514
    goto :goto_2

    .line 516
    :sswitch_3
    const-string v0, "LEFT"

    .line 517
    goto :goto_2

    .line 524
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftBtnState:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 525
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightBtnState:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 539
    .end local v0    # "curDirection":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "savedPassword":Ljava/lang/String;
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 543
    :cond_3
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTablet()Z

    move-result v3

    if-nez v3, :cond_4

    .line 544
    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setRequestedOrientation(I)V

    .line 546
    :cond_4
    return-void

    .line 533
    :cond_5
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 534
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setResult(I)V

    .line 535
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->finish()V

    goto :goto_3

    .line 505
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4c -> :sswitch_3
        0x52 -> :sswitch_1
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method private startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 4
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 680
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v2, "ConfirmLockUniversal"

    const-string v3, "startCheckPattern"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :try_start_0
    iget v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mEffectiveUserId:I

    .line 683
    .local v1, "localEffectiveUserId":I
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$10;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$10;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Landroid/content/Intent;)V

    invoke-static {v2, p1, v1, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mPendingLockCheck:Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v1    # "localEffectiveUserId":I
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 8
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-wide/16 v6, 0x0

    .line 643
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "startVerifyPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mEffectiveUserId:I

    .line 645
    .local v4, "localEffectiveUserId":I
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 648
    .local v2, "challenge":J
    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    .line 649
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v2

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v5, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;

    invoke-direct {v5, p0, p2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Landroid/content/Intent;)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 670
    return-void
.end method

.method private updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V
    .locals 7
    .param p1, "stage"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 910
    const-string v0, "ConfirmLockUniversal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStage to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->clearStepCircles()V

    .line 913
    sget-object v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$13;->$SwitchMap$com$android$settings$accessibility$universallock$ConfirmLockUniversal$Stage:[I

    invoke-virtual {p1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 969
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 970
    return-void

    .line 915
    :pswitch_0
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "NeedToUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0e0a7d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 917
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e15ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 924
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 926
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 927
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 928
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 932
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mBackUpPinButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 940
    :pswitch_1
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "NeedToUnlockWrong"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0e0a76

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 942
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 943
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 944
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 945
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 946
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    goto/16 :goto_0

    .line 950
    :pswitch_2
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "LockedOut"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 952
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 953
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 954
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 955
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 959
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 961
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mBackUpPinButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 913
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method initializeIdentifiers()V
    .locals 3

    .prologue
    .line 200
    const-string v1, "ConfirmLockUniversal"

    const-string v2, "initializeIdentifiers"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v1, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    .line 203
    const v1, 0x7f0d010f

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DirectionLockView;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    .line 204
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 206
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0310

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 207
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DirectionLockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const v1, 0x7f0d0114

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    .line 210
    const v1, 0x7f0d0115

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    .line 211
    const v1, 0x7f0d0128

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mBackUpPinButton:Landroid/widget/Button;

    .line 212
    const v1, 0x7f0d0108

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 213
    const v1, 0x7f0d00fa

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    .line 215
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlagForEnabled:Z

    .line 216
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 847
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 848
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlgToChkConfChng:Z

    .line 850
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->endOngoingAnimations()V

    .line 851
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCurrentPwd:Ljava/lang/String;

    .line 852
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderString:Ljava/lang/String;

    .line 853
    iget v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongAttempt:I

    .line 854
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftBtnState:Z

    .line 855
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightBtnState:Z

    .line 856
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializing()V

    .line 857
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializing()V

    .line 114
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1069
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->freeUpMemory()V

    .line 1072
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1073
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 868
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 873
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 874
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 884
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 886
    const-string v2, "ConfirmLockUniversal"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 889
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 890
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 891
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleAttemptLockout(J)V

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlagForEnabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 896
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    .line 897
    sget-object v2, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlock:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    goto :goto_0
.end method
