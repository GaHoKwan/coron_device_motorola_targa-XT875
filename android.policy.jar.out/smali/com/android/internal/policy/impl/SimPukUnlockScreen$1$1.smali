.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 320
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 321
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->hide()V

    .line 323
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->val$success:Z

    if-eqz v4, :cond_1

    .line 325
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 326
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x10900c3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    const v6, 0x1020364

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 329
    .local v1, layout:Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 330
    .local v2, text:Landroid/widget/TextView;
    const v4, 0x10405fa

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 332
    new-instance v3, Landroid/widget/Toast;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 333
    .local v3, toast:Landroid/widget/Toast;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 334
    const/16 v4, 0x10

    invoke-virtual {v3, v4, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 335
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 336
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 341
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 342
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 354
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layout:Landroid/view/View;
    .end local v2           #text:Landroid/widget/TextView;
    .end local v3           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100()I

    move-result v4

    if-ltz v4, :cond_2

    .line 346
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setHeaderText()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V

    goto :goto_0

    .line 348
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x10400d0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 349
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinConfirmText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
