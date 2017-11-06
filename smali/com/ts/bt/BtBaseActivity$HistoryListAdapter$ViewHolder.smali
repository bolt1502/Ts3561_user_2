.class public final Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BtBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field public phoneTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;

.field public timeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;->this$1:Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
