.class Lcom/ts/factoryset/FsDisplayActivity$2;
.super Ljava/lang/Object;
.source "FsDisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsDisplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/factoryset/FsDisplayActivity;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsDisplayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsDisplayActivity$2;->this$0:Lcom/ts/factoryset/FsDisplayActivity;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 179
    .local v0, "curBtn":Lcom/ts/other/ParamButton;
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity$2;->this$0:Lcom/ts/factoryset/FsDisplayActivity;

    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/factoryset/FsDisplayActivity;->updateTcon(I)V

    .line 180
    return-void
.end method
