.class public Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;
.super Landroid/os/AsyncTask;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartitionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field public mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

.field private volatile mInternalBench:J

.field private volatile mPrivateBench:J

.field private volatile mProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 92
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 100
    .local v0, "activity":Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    iget-object v4, v5, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mStorage:Landroid/os/storage/StorageManager;

    .line 102
    .local v4, "storage":Landroid/os/storage/StorageManager;
    :try_start_0
    # getter for: Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->access$000(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->partitionPrivate(Ljava/lang/String;)V

    .line 104
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/16 v7, 0x28

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :goto_0
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mInternalBench:J

    .line 112
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/16 v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    const-wide/16 v6, 0x1f4

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 119
    :goto_1
    const/4 v5, 0x1

    :try_start_4
    invoke-virtual {v0, v5}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 120
    .local v3, "privateVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    .line 125
    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v5

    const-string v6, "primary_physical"

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    const-string v5, "StorageSettings"

    const-string v6, "Just formatted primary physical; silently moving storage to new emulated volume"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SilentObserver;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SilentObserver;-><init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$1;)V

    invoke-virtual {v4, v5, v6}, Landroid/os/storage/StorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 144
    .end local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_0
    :goto_2
    return-object v1

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e1":Ljava/lang/Exception;
    const-string v5, "StorageSettings"

    const-string v6, "Failed to Thread.sleep"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 143
    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_2

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 116
    .restart local v2    # "e1":Ljava/lang/Exception;
    const-string v5, "StorageSettings"

    const-string v6, "Failed to Thread.sleep"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 134
    .end local v2    # "e1":Ljava/lang/Exception;
    :cond_1
    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V

    .line 135
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/16 v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 137
    const-wide/16 v6, 0x1f4

    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 138
    :catch_3
    move-exception v2

    .line 139
    .restart local v2    # "e1":Ljava/lang/Exception;
    :try_start_6
    const-string v5, "StorageSettings"

    const-string v6, "Failed to Thread.sleep"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x1

    .line 167
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 168
    .local v0, "activity":Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    :goto_0
    return-void

    .line 172
    :cond_0
    if-eqz p1, :cond_1

    .line 173
    const-string v4, "StorageSettings"

    const-string v5, "Failed to partition"

    invoke-static {v4, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 175
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    goto :goto_0

    .line 179
    :cond_1
    new-array v4, v6, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->publishProgress([Ljava/lang/Object;)V

    .line 181
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_1
    # getter for: Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->access$000(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 187
    iget-wide v4, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mInternalBench:J

    long-to-float v4, v4

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    long-to-float v5, v6

    div-float v3, v4, v5

    .line 188
    .local v3, "pct":F
    const-string v4, "StorageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New volume is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x the speed of internal"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_2

    float-to-double v4, v3

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 194
    :cond_2
    new-instance v1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;

    invoke-direct {v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;-><init>()V

    .line 195
    .local v1, "dialog":Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "slow_warning"

    invoke-virtual {v1, v4, v5}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v1    # "dialog":Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;
    .end local v3    # "pct":F
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e1":Ljava/lang/Exception;
    const-string v4, "StorageSettings"

    const-string v5, "Failed to Thread.sleep"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 197
    .end local v2    # "e1":Ljava/lang/Exception;
    .restart local v3    # "pct":F
    :cond_3
    # invokes: Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->onFormatFinished()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->access$200(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    goto :goto_0

    .line 200
    .end local v3    # "pct":F
    :cond_4
    # invokes: Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->onFormatFinished()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->access$200(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 150
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    .line 151
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setCurrentProgress(I)V

    .line 152
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setActivity(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 156
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setCurrentProgress(I)V

    .line 158
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e1":Ljava/lang/Exception;
    const-string v1, "StorageSettings"

    const-string v2, "Failed to Thread.sleep"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
