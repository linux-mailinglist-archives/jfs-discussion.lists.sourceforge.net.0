Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A89868E19
	for <lists+jfs-discussion@lfdr.de>; Tue, 27 Feb 2024 11:54:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rev5v-0002KS-HX;
	Tue, 27 Feb 2024 10:53:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rev5u-0002KL-KM
 for jfs-discussion@lists.sourceforge.net;
 Tue, 27 Feb 2024 10:53:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tKDXyhfxH8xvRMEy2EEWhIk+Ffs5ZHLvKopkrtejH44=; b=PDQaE2YyoIxFI22vhsdCO7UM4l
 rmLAaWAsY68/vGTWbDvirlv/Ugmtcgm3sd7atVC8REch2hPEUJ7ziAF3sShjrEsk1EbKfXsTc9OL+
 LXOBsLrwf+xJo27VYXZi76dLgutbCjS/KnQB6kKioY6lXIgvR385cJ5N16wsWTqO0M+A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tKDXyhfxH8xvRMEy2EEWhIk+Ffs5ZHLvKopkrtejH44=; b=I77EN6ZRHubIdkhh6AegJ386e6
 CuiMAFIBd8V9UMw8DYRBPa4i5nPRQftEIHp56diKmYJAXvLzTZeSWENkc/Gn+sg/357F7eahFcIAX
 1gYCPq03m9NQ/HI36Jgdr8bkyVpLsR7bHE8SVVdXe1JSxBxXiBtoGHuOYPEf50W/4+7w=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rev5r-0003Fw-Hy for jfs-discussion@lists.sourceforge.net;
 Tue, 27 Feb 2024 10:53:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id D3BFFCE1A34;
 Tue, 27 Feb 2024 10:53:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2F54C433C7;
 Tue, 27 Feb 2024 10:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1709031219;
 bh=9x1CMFFxyaT5o5BDqz2j0sB+l86gLsGs+SoShtZQ+MQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mWlOzKjv3htg7HuBln9XlIsZh5L4cGjjNuLVzP7c6qvxjNgp6CEyXOJYOlhis93RV
 f7wZA8uFoaKWq0agkEpcDdbyzufYQTBDr0KV8FU0kLB9mUpkZ5FPWIFmpLJPpoM1kK
 rFIdq/7Z+Dq/EMAVRcni6/s1tL+4V1uxA5NItEDlMLtZrzTl7CkWSRoOX8g+Br7fJF
 t4ynNxSb74K/ytu4LG2oOfulzYKQhrUsN9lwEkBtR/5CRF5R9rNtSO4YFpPHjw/1sZ
 XFYwKrOFbvpFRfN9gvLjt3xn8/Vq2AvVieMCqn9fcJXCOsj644gNoBNX9MR2P1HKyb
 yylB6Q6fv+8TQ==
To: shaggy@kernel.org, jack@suse.cz, jlayton@kernel.org,
 chuck.lever@oracle.com, zhouchengming@bytedance.com,
 chengming.zhou@linux.dev
Date: Tue, 27 Feb 2024 11:52:45 +0100
Message-ID: <20240227-erlischt-filmpreis-b637a1cd3693@brauner>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240224134925.829677-1-chengming.zhou@linux.dev>
References: <20240224134925.829677-1-chengming.zhou@linux.dev>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1021; i=brauner@kernel.org;
 h=from:subject:message-id; bh=9x1CMFFxyaT5o5BDqz2j0sB+l86gLsGs+SoShtZQ+MQ=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMaTe3S/6MZ1daVZVTvke7SMzfxYVrxW59WSStFFH45+/V
 6e+Kdjj1FHKwiDGxSArpsji0G4SLrecp2KzUaYGzBxWJpAhDFycAjCR5nZGhuMzd72TX3nFOVr0
 9mml22nf+VtSPdf6X7+3gKmnZqXUgQJGhp4atwcs9akVM/+GrVSu7fnX3Fx0ufdbi/5OOxvPOrf
 D/AA=
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, 24 Feb 2024 13:49:25 +0000, chengming.zhou@linux.dev
 wrote: > The SLAB_MEM_SPREAD flag is already a no-op as of 6.8-rc1, remove
 > its usage so we can delete it from slab. No functional change. [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rev5r-0003Fw-Hy
Subject: Re: [Jfs-discussion] [PATCH] jfs: remove SLAB_MEM_SPREAD flag usage
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
From: Christian Brauner via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christian Brauner <brauner@kernel.org>
Cc: Xiongwei.Song@windriver.com, Christian Brauner <brauner@kernel.org>,
 roman.gushchin@linux.dev, amir73il@gmail.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, vbabka@suse.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sat, 24 Feb 2024 13:49:25 +0000, chengming.zhou@linux.dev wrote:
> The SLAB_MEM_SPREAD flag is already a no-op as of 6.8-rc1, remove
> its usage so we can delete it from slab. No functional change.
> 
> 

Updated commit message to point to slab removal.

---

Applied to the vfs.misc branch of the vfs/vfs.git tree.
Patches in the vfs.misc branch should appear in linux-next soon.

Please report any outstanding bugs that were missed during review in a
new review to the original patch series allowing us to drop it.

It's encouraged to provide Acked-bys and Reviewed-bys even though the
patch has now been applied. If possible patch trailers will be updated.

Note that commit hashes shown below are subject to change due to rebase,
trailer updates or similar. If in doubt, please check the listed branch.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
branch: vfs.misc

[1/1] jfs: remove SLAB_MEM_SPREAD flag usage
      https://git.kernel.org/vfs/vfs/c/6259e5e07b76


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
