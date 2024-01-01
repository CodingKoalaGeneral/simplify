.class Lwode/muxue/rn_8$2$1;
.super Ljava/lang/Object;
.source "rn_8.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwode/muxue/rn_8$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lwode/muxue/rn_8$2;

.field final synthetic val$rn_32:Ljava/lang/String;


# direct methods
.method constructor <init>(Lwode/muxue/rn_8$2;Ljava/lang/String;)V
    .locals 0

    #@0
    .line 168
    iput-object p1, p0, Lwode/muxue/rn_8$2$1;->this$1:Lwode/muxue/rn_8$2;

    #@2
    iput-object p2, p0, Lwode/muxue/rn_8$2$1;->val$rn_32:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .line 169
    iget-object v0, p0, Lwode/muxue/rn_8$2$1;->this$1:Lwode/muxue/rn_8$2;

    #@2
    iget-object v0, v0, Lwode/muxue/rn_8$2;->this$0:Lwode/muxue/rn_8;

    #@4
    const-string v1, "\u5185\u5bb9\u5df2\u590d\u5236\u5230\u526a\u5207\u677f"

    #@6
    const/4 v2, 0x0

    #@7
    invoke-static {v0, v1, v2}, Lrn_34/rn_35/rn_36/rn_4580;->rn_4636(Landroid/app/Activity;Ljava/lang/Object;Z)V

    #@a
    .line 170
    iget-object v0, p0, Lwode/muxue/rn_8$2$1;->this$1:Lwode/muxue/rn_8$2;

    #@c
    iget-object v0, v0, Lwode/muxue/rn_8$2;->this$0:Lwode/muxue/rn_8;

    #@e
    iget-object v1, p0, Lwode/muxue/rn_8$2$1;->val$rn_32:Ljava/lang/String;

    #@10
    invoke-static {v0, v1}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3589(Landroid/content/Context;Ljava/lang/String;)V

    #@13
    .line 171
    new-instance v0, Landroid/content/Intent;

    #@15
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@18
    .line 172
    iget-object v1, p0, Lwode/muxue/rn_8$2$1;->val$rn_32:Ljava/lang/String;

    #@1a
    const-string v2, "1"

    #@1c
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1f
    .line 173
    nop

    #@20
    .line 176
    iget-object v1, p0, Lwode/muxue/rn_8$2$1;->this$1:Lwode/muxue/rn_8$2;

    #@22
    iget-object v1, v1, Lwode/muxue/rn_8$2;->this$0:Lwode/muxue/rn_8;

    #@24
    const-class v2, Lwode/muxue/rn_3;

    #@26
    invoke-static {v1, v2, v0}, Lrn_34/rn_35/rn_36/rn_4580;->newActivity2(Landroid/app/Activity;Ljava/lang/Class;Landroid/content/Intent;)V

    #@29
    .line 178
    iget-object v0, p0, Lwode/muxue/rn_8$2$1;->this$1:Lwode/muxue/rn_8$2;

    #@2b
    iget-object v0, v0, Lwode/muxue/rn_8$2;->this$0:Lwode/muxue/rn_8;

    #@2d
    invoke-virtual {v0}, Lwode/muxue/rn_8;->finish()V

    #@30
    .line 179
    return-void
.end method
