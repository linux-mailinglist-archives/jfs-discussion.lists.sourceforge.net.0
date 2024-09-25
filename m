Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6CF9863C9
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Sep 2024 17:39:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1stU6Z-0005gd-QB;
	Wed, 25 Sep 2024 15:39:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kent.overstreet@linux.dev>) id 1stU5Y-0000fT-3I
 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Sep 2024 15:37:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aiHBYW61Q99lbPSaV3HFKFXGi8oz8BK9hAfEMY5UgxM=; b=hEczJvWI5N/TgQvEjsGG04YmF4
 bPnuOqw6ArMK0sQzEI2xnt+7ZB24D46fWWl4KVlPUl8wwhtFnXXBKv6ENgWSP9syJx1OwnxgB+ejw
 w3lUYUSwCHtdTFvTXtCJACJpmMZIjgDrVA+5zMvb67gGWF/LVoEAZZQp/Yw33B9BLDRQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aiHBYW61Q99lbPSaV3HFKFXGi8oz8BK9hAfEMY5UgxM=; b=HX9GmngRajSSNO8i6j8k+onnPU
 N87nxOTtdxb6UsgLLXjjJaczf88+7JwcBmfO03m3kbt+V0yX9+xMwrUdZD8M3Y7O3ARMp4vEU3Pce
 w2KVf8p9uqLqjIwrmo39g1qH3yzaYE/zRm4c+oa6jCCqeAPj8QGS09omtKQ86ybAyaHY=;
Received: from out-172.mta1.migadu.com ([95.215.58.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1stU5V-0002Mn-GU for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Sep 2024 15:37:58 +0000
Date: Wed, 25 Sep 2024 11:20:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1727277614;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=aiHBYW61Q99lbPSaV3HFKFXGi8oz8BK9hAfEMY5UgxM=;
 b=tQZCg/98FFy29MUkAxwsbzmf8AF1oEoXBMLojN/+ZjZYOa1tHJZbz3oL0DfOnQlSiVteru
 EHfuraK3s6oGhieaq/Jp9xGDoGbN4N2+es2xxuW/cKTAHxHnZwAPqejT2gF46hF6rGG0Ax
 ULXMvYRDez98G852BeNmHa8uTm+5r2E=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
To: Edward Adam Davis <eadavis@qq.com>
Message-ID: <ywccsi7uqqnsfha4yvg6lycsbafeqwylwabwvkjprjrv66q4sb@kxuz3ygc5qp7>
References: <66f33aad.050a0220.457fc.0030.GAE@google.com>
 <tencent_4A8FBB4133EA9E461B0C4B2C1B2425FFBA08@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_4A8FBB4133EA9E461B0C4B2C1B2425FFBA08@qq.com>
X-Migadu-Flow: FLOW_OUT
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Sep 25, 2024 at 09:53:00PM GMT, Edward Adam Davis
 wrote: > Syzbot report a kernel BUG in vfs_get_tree. > The root cause is that
 read_btree_nodes() returned 1 and returned -EINTR > due to kthre [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1stU5V-0002Mn-GU
X-Mailman-Approved-At: Wed, 25 Sep 2024 15:39:02 +0000
Subject: Re: [Jfs-discussion] [PATCH] bcachefs: return the error code
 instead of the return value of IS_ERR_OR_NULL
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: Kent Overstreet via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Kent Overstreet <kent.overstreet@linux.dev>
Cc: shaggy@kernel.org, brauner@kernel.org, jack@suse.cz,
 syzkaller-bugs@googlegroups.com, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-bcachefs@vger.kernel.org,
 viro@zeniv.linux.org.uk, syzbot+c0360e8367d6d8d04a66@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Sep 25, 2024 at 09:53:00PM GMT, Edward Adam Davis wrote:
> Syzbot report a kernel BUG in vfs_get_tree.
> The root cause is that read_btree_nodes() returned 1 and returned -EINTR
> due to kthread_run() execution failure.
> 
> The -EINTR needs to be returnned to bch2_fs_recovery(), not return to
> "ret = IS_ERR_OR_NULL(t)".
> 
> Reported-and-tested-by: syzbot+c0360e8367d6d8d04a66@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=c0360e8367d6d8d04a66
> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
> ---
>  fs/bcachefs/btree_node_scan.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/fs/bcachefs/btree_node_scan.c b/fs/bcachefs/btree_node_scan.c
> index b28c649c6838..df7090ca1e81 100644
> --- a/fs/bcachefs/btree_node_scan.c
> +++ b/fs/bcachefs/btree_node_scan.c
> @@ -281,6 +281,10 @@ static int read_btree_nodes(struct find_btree_nodes *f)
>  			closure_put(&cl);
>  			f->ret = ret;
>  			bch_err(c, "error starting kthread: %i", ret);
> +			if (IS_ERR(t)) {
> +				closure_sync(&cl);
> +				return PTR_ERR(t);
> +			}
>  			break;
>  		}
>  	}
> -- 
> 2.43.0
> 

I fixed this last night with the patch below...

commit c1a6f5ca052b7f8609917d13cd11fc60c94396aa
Author: Kent Overstreet <kent.overstreet@linux.dev>
Date:   Tue Sep 24 19:31:22 2024 -0400

    bcachefs: Fix incorrect IS_ERR_OR_NULL usage
    
    Returning a positive integer instead of an error code causes error paths
    to become very confused.
    
    Closes: syzbot+c0360e8367d6d8d04a66@syzkaller.appspotmail.com
    Signed-off-by: Kent Overstreet <kent.overstreet@linux.dev>

diff --git a/fs/bcachefs/btree_node_scan.c b/fs/bcachefs/btree_node_scan.c
index b28c649c6838..1e694fedc5da 100644
--- a/fs/bcachefs/btree_node_scan.c
+++ b/fs/bcachefs/btree_node_scan.c
@@ -275,7 +275,7 @@ static int read_btree_nodes(struct find_btree_nodes *f)
 		w->ca		= ca;
 
 		t = kthread_run(read_btree_nodes_worker, w, "read_btree_nodes/%s", ca->name);
-		ret = IS_ERR_OR_NULL(t);
+		ret = PTR_ERR_OR_ZERO(t);
 		if (ret) {
 			percpu_ref_put(&ca->io_ref);
 			closure_put(&cl);


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
