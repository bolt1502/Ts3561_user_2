.class public final Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BtPhoneBookActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field public nameTextView:Landroid/widget/TextView;

.field public phoneTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;


# direct methods
.method public constructor <init>(Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;->this$1:Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
