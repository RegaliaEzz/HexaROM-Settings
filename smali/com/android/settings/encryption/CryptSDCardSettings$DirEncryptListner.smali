.class Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
.super Landroid/os/storage/IDirEncryptServiceListener$Stub;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirEncryptListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Landroid/os/storage/IDirEncryptServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 3
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "operation"    # I
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "progress"    # I
    .param p5, "storage"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEncryptionStatusChanged: operation, volId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$600(Lcom/android/settings/encryption/CryptSDCardSettings;Ljava/lang/String;)V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const-string v0, "free"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status free: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    # getter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$700(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$600(Lcom/android/settings/encryption/CryptSDCardSettings;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    # getter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$700(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    # getter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$800(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    # getter for: Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$900(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    # getter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$800(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 136
    :cond_2
    const-string v0, "busy"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    const-string v1, "status busy"

    # invokes: Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$600(Lcom/android/settings/encryption/CryptSDCardSettings;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    # setter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I
    invoke-static {v0, p4}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$1002(Lcom/android/settings/encryption/CryptSDCardSettings;I)I

    .line 139
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    # getter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$1100(Lcom/android/settings/encryption/CryptSDCardSettings;)I

    move-result v0

    if-nez v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    # setter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I
    invoke-static {v0, p5}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$1102(Lcom/android/settings/encryption/CryptSDCardSettings;I)I

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    # getter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$800(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 143
    :cond_4
    const-string v0, "done"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    const-string v1, "status done"

    # invokes: Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$600(Lcom/android/settings/encryption/CryptSDCardSettings;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    # getter for: Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$900(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    # getter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$800(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 148
    :cond_5
    const-string v0, "Mount"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 149
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    const-string v1, "status mount"

    # invokes: Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$600(Lcom/android/settings/encryption/CryptSDCardSettings;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    # getter for: Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$900(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    # getter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$800(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    const-string v1, "ignore status"

    # invokes: Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$600(Lcom/android/settings/encryption/CryptSDCardSettings;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
