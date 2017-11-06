.class Lcom/ts/factoryset/FsCanActivity$FsCanAdapter$1;
.super Ljava/lang/Object;
.source "FsCanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter$1;->this$1:Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 312
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 313
    .local v0, "curBtn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v1

    .line 314
    .local v1, "id":I
    return-void
.end method
