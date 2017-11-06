.class public Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CanBZLogInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mFileItem:Lcom/ts/canview/CanItemTextBtnList;

.field public mPos:I

.field final synthetic this$1:Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;


# direct methods
.method public constructor <init>(Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;->this$1:Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
