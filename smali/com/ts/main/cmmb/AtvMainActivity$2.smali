.class Lcom/ts/main/cmmb/AtvMainActivity$2;
.super Ljava/lang/Object;
.source "AtvMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/cmmb/AtvMainActivity;->ShowList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/cmmb/AtvMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/cmmb/AtvMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/cmmb/AtvMainActivity$2;->this$0:Lcom/ts/main/cmmb/AtvMainActivity;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity$2;->this$0:Lcom/ts/main/cmmb/AtvMainActivity;

    iget-object v0, v0, Lcom/ts/main/cmmb/AtvMainActivity;->mCstTv:Lcom/ts/MainUI/CstTv;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/CstTv;->PlayFre(I)Z

    .line 171
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity$2;->this$0:Lcom/ts/main/cmmb/AtvMainActivity;

    const/16 v1, 0x96

    iput v1, v0, Lcom/ts/main/cmmb/AtvMainActivity;->nListDelayTime:I

    .line 172
    return-void
.end method
