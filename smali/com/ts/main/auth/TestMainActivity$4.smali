.class Lcom/ts/main/auth/TestMainActivity$4;
.super Ljava/lang/Object;
.source "TestMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/auth/TestMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/auth/TestMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/auth/TestMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/auth/TestMainActivity$4;->this$0:Lcom/ts/main/auth/TestMainActivity;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 162
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity$4;->this$0:Lcom/ts/main/auth/TestMainActivity;

    iput v5, v1, Lcom/ts/main/auth/TestMainActivity;->nTestMode:I

    .line 163
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity$4;->this$0:Lcom/ts/main/auth/TestMainActivity;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ts/main/auth/TestMainActivity;->Starttime:J

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity$4;->this$0:Lcom/ts/main/auth/TestMainActivity;

    invoke-virtual {v1}, Lcom/ts/main/auth/TestMainActivity;->IsHaveDvd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/ts/main/common/MainUI;->EnterMyDvdMode(I)V

    .line 171
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 178
    :goto_1
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity$4;->this$0:Lcom/ts/main/auth/TestMainActivity;

    iget-object v1, v1, Lcom/ts/main/auth/TestMainActivity;->ShowInfoButton:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->setVisibility(I)V

    .line 180
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity$4;->this$0:Lcom/ts/main/auth/TestMainActivity;

    iget-object v1, v1, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity$4;->this$0:Lcom/ts/main/auth/TestMainActivity;

    iget-object v1, v1, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    aput v5, v1, v4

    goto :goto_1
.end method
