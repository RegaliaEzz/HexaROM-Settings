.class Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;
.super Landroid/os/AsyncTask;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyStoreAndKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/CredentialStorage;
    .param p2, "x1"    # Lcom/android/settings/CredentialStorage$1;

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 15
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 624
    const/4 v10, 0x1

    .line 626
    .local v10, "success":Z
    :try_start_0
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    invoke-direct {v2, v12}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 627
    .local v2, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    iget-object v12, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    const-string v13, "knox_ccm_policy"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v13

    # setter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v12, v13}, Lcom/android/settings/CredentialStorage;->access$402(Lcom/android/settings/CredentialStorage;Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    .line 628
    iget-object v12, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v12}, Lcom/android/settings/CredentialStorage;->access$400(Lcom/android/settings/CredentialStorage;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v12}, Lcom/android/settings/CredentialStorage;->access$400(Lcom/android/settings/CredentialStorage;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "ccmVersion":Ljava/lang/String;
    :goto_0
    const-string v12, "3.0"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 631
    iget-object v12, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v12}, Lcom/android/settings/CredentialStorage;->access$400(Lcom/android/settings/CredentialStorage;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v12

    invoke-interface {v12, v2}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->isAccessControlMethodPassword(Landroid/app/enterprise/ContextInfo;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 632
    iget-object v12, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v12}, Lcom/android/settings/CredentialStorage;->access$400(Lcom/android/settings/CredentialStorage;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v12

    invoke-interface {v12, v2}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->keychainMarkedReset(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    .line 633
    if-eqz v10, :cond_3

    .line 634
    const-string v12, "CredentialStorage"

    const-string v13, "Successfully deleted certificates from CCM"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    .end local v1    # "ccmVersion":Ljava/lang/String;
    .end local v2    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/widget/LockPatternUtils;->getProfiles(I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 650
    .local v9, "pi":Landroid/content/pm/UserInfo;
    iget-object v12, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    iget v13, v9, Landroid/content/pm/UserInfo;->id:I

    # invokes: Lcom/android/settings/CredentialStorage;->isUserRemoveCertificatesAllowed(I)Z
    invoke-static {v12, v13}, Lcom/android/settings/CredentialStorage;->access$500(Lcom/android/settings/CredentialStorage;I)Z

    move-result v6

    .line 653
    .local v6, "isClearAllowedForUser":Z
    if-nez v6, :cond_4

    .line 655
    const-string v12, "CredentialStorage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Clear not allowed for userId "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (isUserRemoveCertificatesAllowedAsUser == false)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 628
    .end local v6    # "isClearAllowedForUser":Z
    .end local v9    # "pi":Landroid/content/pm/UserInfo;
    .restart local v2    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 636
    .restart local v1    # "ccmVersion":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v12, "CredentialStorage"

    const-string v13, "Error deleting certificates from CCM"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 640
    .end local v1    # "ccmVersion":Ljava/lang/String;
    .end local v2    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :catch_0
    move-exception v3

    .line 641
    .local v3, "e":Landroid/os/RemoteException;
    const/4 v10, 0x0

    .line 642
    const-string v12, "CredentialStorage"

    const-string v13, "Failed at ClientCertificateManager reset API"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 663
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v6    # "isClearAllowedForUser":Z
    .restart local v9    # "pi":Landroid/content/pm/UserInfo;
    :cond_4
    # getter for: Lcom/android/settings/CredentialStorage;->SYSTEM_CREDENTIAL_UIDS:[I
    invoke-static {}, Lcom/android/settings/CredentialStorage;->access$600()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v8, v0

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_3
    if-ge v5, v8, :cond_1

    aget v11, v0, v5

    .line 664
    .local v11, "uid":I
    iget-object v12, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v12}, Lcom/android/settings/CredentialStorage;->access$700(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v12

    iget v13, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v13, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/security/KeyStore;->clearUid(I)Z

    .line 663
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 669
    .end local v0    # "arr$":[I
    .end local v5    # "i$":I
    .end local v6    # "isClearAllowedForUser":Z
    .end local v8    # "len$":I
    .end local v9    # "pi":Landroid/content/pm/UserInfo;
    .end local v11    # "uid":I
    :cond_5
    :try_start_2
    iget-object v12, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v12}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v7

    .line 671
    .local v7, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    if-eqz v10, :cond_6

    :try_start_3
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v12

    invoke-interface {v12}, Landroid/security/IKeyChainService;->reset()Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_4
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 675
    :try_start_4
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    .line 682
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_5
    return-object v12

    .line 671
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 672
    :catch_1
    move-exception v3

    .line 673
    .restart local v3    # "e":Landroid/os/RemoteException;
    const/4 v12, 0x0

    :try_start_5
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v12

    .line 675
    :try_start_6
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 677
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_2
    move-exception v3

    .line 678
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V

    .line 679
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_5

    .line 675
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v12

    :try_start_7
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v12
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3

    .line 680
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_3
    move-exception v3

    .line 681
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v12, "CredentialStorage"

    const-string v13, "CredentialStorage is destroyed"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 619
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 687
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f0e0b8d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 694
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 695
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f0e0b8e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 619
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
