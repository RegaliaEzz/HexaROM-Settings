.class Lcom/android/settings/UCSCryptKeeperTask$2;
.super Ljava/lang/Object;
.source "UCSCryptKeeperTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UCSCryptKeeperTask;->passwordEntryInitForUCS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UCSCryptKeeperTask;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$2;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iput-object p2, p0, Lcom/android/settings/UCSCryptKeeperTask$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 587
    return-void
.end method