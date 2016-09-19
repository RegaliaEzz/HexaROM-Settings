.class public Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$1;,
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SilentObserver;,
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;,
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;
    }
.end annotation


# instance fields
.field private mFormatPrivate:Z

.field private mFromFactoryReset:Z

.field private mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->onFormatFinished()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getDiskDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getGenericDiskDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDiskDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGenericDiskDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const v0, 0x1040499

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    const v0, 0x104049b

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFormatFinished()V
    .locals 6

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "forget_uuid"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "forgetUuid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 250
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageManager;->forgetVolume(Ljava/lang/String;)V

    .line 254
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    if-eqz v4, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 258
    .local v3, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v3, :cond_1

    const-string v4, "private"

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 264
    .end local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    .local v2, "offerMigrate":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFromFactoryReset:Z

    if-eqz v4, :cond_3

    .line 265
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 266
    .local v1, "intent":Landroid/content/Intent;
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setResult(ILandroid/content/Intent;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finish()V

    .line 279
    :goto_1
    return-void

    .line 258
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "offerMigrate":Z
    .restart local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 261
    .end local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "offerMigrate":Z
    goto :goto_0

    .line 269
    :cond_3
    if-eqz v2, :cond_4

    .line 270
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.DISK_ID"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->startActivity(Landroid/content/Intent;)V

    .line 278
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    goto :goto_1

    .line 274
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.DISK_ID"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finish()V

    .line 82
    :goto_0
    return-void

    .line 59
    :cond_0
    const v1, 0x7f0401f8

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setContentView(I)V

    .line 60
    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setKeepScreenOn(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from_factory_reset"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFromFactoryReset:Z

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "format_private"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    .line 67
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setIllustrationInternal(Z)V

    .line 69
    const v1, 0x7f0e06d6

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setHeaderText(I[Ljava/lang/String;)V

    .line 70
    const v1, 0x7f0e06d7

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setBodyText(I[Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    .line 75
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    if-nez v1, :cond_1

    .line 76
    new-instance v1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-direct {v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;-><init>()V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    .line 77
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-virtual {v1, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    .line 78
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-virtual {v1, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    return-object v0
.end method
