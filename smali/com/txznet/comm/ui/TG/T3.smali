.class public Lcom/txznet/comm/ui/TG/T3;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T:Lcom/txznet/comm/ui/Ty/T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/TG/T3;->T:Lcom/txznet/comm/ui/Ty/T;

    return-void
.end method

.method public static T(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p0, "layoutName"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v0, Lcom/txznet/comm/ui/TG/T3;->T:Lcom/txznet/comm/ui/Ty/T;

    invoke-virtual {v0, p0}, Lcom/txznet/comm/ui/Ty/T;->Te(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public static T(Ljava/lang/String;Landroid/view/View;)Ljava/lang/Object;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    :try_start_0
    sget-object v2, Lcom/txznet/comm/ui/TG/T3;->T:Lcom/txznet/comm/ui/Ty/T;

    const-string v3, "id"

    invoke-virtual {v2, p0, v3}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 42
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 46
    .end local v1    # "id":I
    :goto_0
    return-object v2

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static T()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/txznet/comm/ui/TG/T3;->T:Lcom/txznet/comm/ui/Ty/T;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Ty/T;->T()V

    .line 21
    return-void
.end method

.method public static T2(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    sget-object v1, Lcom/txznet/comm/ui/TG/T3;->T:Lcom/txznet/comm/ui/Ty/T;

    invoke-virtual {v1, p0}, Lcom/txznet/comm/ui/Ty/T;->Tw(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static T3(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p0, "layoutName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-static {p0}, Lcom/txznet/comm/ui/TG/T3;->T(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 32
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 36
    :goto_0
    return-object v1

    .line 35
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not exist!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static TN(Ljava/lang/String;)F
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    sget-object v1, Lcom/txznet/comm/ui/TG/T3;->T:Lcom/txznet/comm/ui/Ty/T;

    invoke-virtual {v1, p0}, Lcom/txznet/comm/ui/Ty/T;->Ty(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 83
    :goto_0
    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static Te(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v0, Lcom/txznet/comm/ui/TG/T3;->T:Lcom/txznet/comm/ui/Ty/T;

    invoke-virtual {v0, p0}, Lcom/txznet/comm/ui/Ty/T;->Tn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
