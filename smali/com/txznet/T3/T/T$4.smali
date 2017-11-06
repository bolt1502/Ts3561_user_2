.class final Lcom/txznet/T3/T/T$4;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/T3/T/T;->T(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/T3/T/Te;


# direct methods
.method constructor <init>(Lcom/txznet/T3/T/Te;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/txznet/T3/T/T$4;->T:Lcom/txznet/T3/T/Te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/txznet/T3/T/T$4;->T:Lcom/txznet/T3/T/Te;

    invoke-virtual {v0}, Lcom/txznet/T3/T/Te;->dismiss()V

    .line 177
    return-void
.end method
