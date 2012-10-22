.class public interface abstract Landroid/view/IndicateMenuItem;
.super Ljava/lang/Object;
.source "IndicateMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IndicateMenuItem$OnMenuItemClickListener;
    }
.end annotation


# virtual methods
.method public abstract getId()I
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getOrder()I
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract setEnabled(Z)Landroid/view/IndicateMenuItem;
.end method

.method public abstract setIntent(Landroid/content/Intent;)Landroid/view/IndicateMenuItem;
.end method

.method public abstract setOnMenuItemClickListener(Landroid/view/IndicateMenuItem$OnMenuItemClickListener;)Landroid/view/IndicateMenuItem;
.end method

.method public abstract setTitle(I)Landroid/view/IndicateMenuItem;
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)Landroid/view/IndicateMenuItem;
.end method

.method public abstract setVisible(Z)Landroid/view/IndicateMenuItem;
.end method
