.class Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;
.super Landroid/widget/BaseAdapter;
.source "CanBZLogInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/psa/hc/CanBZLogInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mSize:I

.field final synthetic this$0:Lcom/ts/can/psa/hc/CanBZLogInfoActivity;


# direct methods
.method public constructor <init>(Lcom/ts/can/psa/hc/CanBZLogInfoActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;->this$0:Lcom/ts/can/psa/hc/CanBZLogInfoActivity;

    .line 145
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;->mSize:I

    .line 147
    iput-object p2, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;->mContext:Landroid/content/Context;

    .line 148
    return-void
.end method


# virtual methods
.method public SetSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;->mSize:I

    .line 158
    invoke-virtual {p0}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;->notifyDataSetChanged()V

    .line 159
    return-void
.end method

.method public addItem(Ljava/lang/String;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;->notifyDataSetChanged()V

    .line 153
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;->mSize:I

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 176
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 182
    const-string v3, "CanBZLogInfoActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getView "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "holder":Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 187
    new-instance v0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;-><init>(Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;)V

    .line 188
    .restart local v0    # "holder":Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;
    new-instance v1, Lcom/ts/canview/CanItemTextBtnList;

    iget-object v3, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v7}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 189
    .local v1, "item":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v1, v7}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 191
    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object p2

    .line 192
    iput-object v1, v0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;->mFileItem:Lcom/ts/canview/CanItemTextBtnList;

    .line 193
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x55

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .end local v1    # "item":Lcom/ts/canview/CanItemTextBtnList;
    :goto_0
    iput p1, v0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;->mPos:I

    .line 205
    iget-object v3, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;->this$0:Lcom/ts/can/psa/hc/CanBZLogInfoActivity;

    iget v3, v3, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogType:I

    iget-object v4, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;->this$0:Lcom/ts/can/psa/hc/CanBZLogInfoActivity;

    iget-object v4, v4, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogData:Lcom/lgb/canmodule/CanDataInfo$PSALogUnit;

    invoke-static {v3, p1, v4}, Lcom/lgb/canmodule/CanJni;->BZGetLogData(IILcom/lgb/canmodule/CanDataInfo$PSALogUnit;)I

    move-result v2

    .line 206
    .local v2, "ret":I
    if-nez v2, :cond_1

    .line 208
    iget-object v3, v0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;->mFileItem:Lcom/ts/canview/CanItemTextBtnList;

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u3001 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 214
    :goto_1
    return-object p2

    .line 199
    .end local v2    # "ret":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;
    check-cast v0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;
    goto :goto_0

    .line 212
    .restart local v2    # "ret":I
    :cond_1
    iget-object v3, v0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter$ViewHolder;->mFileItem:Lcom/ts/canview/CanItemTextBtnList;

    const-string v4, "%d\u3001 %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/ts/can/psa/hc/CanBZLogInfoActivity$LogAdapter;->this$0:Lcom/ts/can/psa/hc/CanBZLogInfoActivity;

    iget-object v7, v7, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->mLogData:Lcom/lgb/canmodule/CanDataInfo$PSALogUnit;

    iget-object v7, v7, Lcom/lgb/canmodule/CanDataInfo$PSALogUnit;->szInfo:[B

    invoke-static {v7}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    goto :goto_1
.end method
