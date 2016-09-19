.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings;
    .param p2, "x1"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v6, 0x20

    .line 157
    const-string v4, "DeviceProfilesSettings"

    const-string v5, "afterTextChanged ::"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 159
    const/4 v3, 0x0

    .line 160
    .local v3, "spaceNum":I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 161
    .local v2, "length":I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "deviceName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    .line 165
    add-int/lit8 v3, v3, 0x1

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_2

    .line 170
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_3

    if-eq v2, v3, :cond_3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    # setter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z
    invoke-static {v5, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$102(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)Z

    .line 172
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 173
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z
    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$100(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "spaceNum":I
    :cond_2
    return-void

    .line 170
    .restart local v0    # "deviceName":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "spaceNum":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 182
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "beforeTextChanged ::"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    .line 185
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 189
    const-string v1, "DeviceProfilesSettings"

    const-string v2, "onTextChanged ::"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "temp":Ljava/lang/String;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # setter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z
    invoke-static {v1, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$102(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)Z

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_4

    .line 196
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v1, v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v1, v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_3

    .line 197
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNameEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$500(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$500(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->isErrorEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$500(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$500(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e040a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v1, v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNameEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNameEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 210
    :cond_4
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$500(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$500(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 212
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNameEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0
.end method
