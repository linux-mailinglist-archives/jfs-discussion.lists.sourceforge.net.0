Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAA27BE1E6
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Oct 2023 15:55:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qpqiv-0000v9-2m;
	Mon, 09 Oct 2023 13:55:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1qpqis-0000ur-I7
 for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Oct 2023 13:55:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c/xQardZbxbh6d8Wy27FrgLVOdb6Vm0vBIgDFhDBU3g=; b=AiQCGtffCgpoH2+GhMYZYwgVU9
 k26yH2ubUbMw5doTRs/cMka0NWCZ7IeOIxGFQKQvNT7OuBR/T2BusHzmQPZzcYA0YRc0DwtD+92uM
 iJJ8PrjriVX4uitw0UgQI/DPqvuN3QpZpPID7Mpuf7h3DtRcN5WOQ8b6xYqTldE9CBR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c/xQardZbxbh6d8Wy27FrgLVOdb6Vm0vBIgDFhDBU3g=; b=jI2cIjF2P/pidR0ICu7g5aoUwp
 J12Bb5YQg9KkZFuLYcwd3GnBv08LmoGdGWDthKiP3WwfqxCrSrRcQRs0hdtw1Jn+f4DqlWJHopKOm
 Q2mtjDR4dBGew2qhDPBjPeTqeYafYMX0HAoRLHNYLNpVI7XWXLME+GEmhurXvdqNIlQs=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qpqio-0003ZE-Lq for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Oct 2023 13:55:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 4842BB81204;
 Mon,  9 Oct 2023 13:54:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A043C433CB;
 Mon,  9 Oct 2023 13:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1696859684;
 bh=ompOgLLvmlaZ/tZHb2NKNh+AWkXSSBfmdsowsHpjK1Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=I9o9dDnp3E7CyoCXUH0vvzI9zyOVbFPT79OCHoI+Ops84d00hoDR+hLMweUsU2oEb
 1KNscg7x7tj+4tD46Fz/Rx75OlaYlkypHxdpCCfTx5gw3XnqDh+AmmC9ICw9upSA2s
 X/d+VnTA/XzHoblJdENjh1ej6qTpgotK7bCtJK0td03/kIw+2o5mLrP8OHEjoc9esi
 Xh7KpUyBTP0rV6mW1kQI21C8tmD9fod1PHGfTu/5EHd4epEkubnNLFkQjXRzJGVJVC
 1WqO2LAL3+/pDlolNKPS34ybeTYj6anBHy24XnV6vdCFe8lt0gYzYPr/Iee2BIBiwp
 EC7BDRB7YGYqQ==
To: jack@suse.cz, syzbot+23bc20037854bb335d59@syzkaller.appspotmail.com,
 Lizhi Xu <lizhi.xu@windriver.com>
Date: Mon,  9 Oct 2023 15:54:36 +0200
Message-Id: <20231009-vielsagend-halbmarathon-2c0c448544db@brauner>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231009094557.1398920-1-lizhi.xu@windriver.com>
References: <0000000000005239cf060727d3f6@google.com>
 <20231009094557.1398920-1-lizhi.xu@windriver.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1043; i=brauner@kernel.org;
 h=from:subject:message-id; bh=ompOgLLvmlaZ/tZHb2NKNh+AWkXSSBfmdsowsHpjK1Q=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMaSqsIldct10g/m5hvdFjvWpMi8eV+r9PKmnnHh43gHrtwwe
 8xucO0pZGMS4GGTFFFkc2k3C5ZbzVGw2ytSAmcPKBDKEgYtTACYiEMrwT3H38iLBBev7S5eWTD3H81
 f0zAnuJWk/urcZbgo6y1GXLszIsERhh8bvVO37ifPzrFIPFYQq2jOY3pWPO7zAtq9tT/5PfgA=
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 09 Oct 2023 17:45:57 +0800, Lizhi Xu wrote: > When
 sbi->flag is JFS_NOINTEGRITY in lmLogOpen(), log->bdev_handle can't > be
 inited, so it value will be NULL. > Therefore, add the "log ->no_int [...]
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qpqio-0003ZE-Lq
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix log->bdev_handle null ptr
 deref in lbmStartIO
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
Cc: axboe@kernel.dk, shaggy@kernel.org, Christian Brauner <brauner@kernel.org>,
 johannes.thumshirn@wdc.com, syzkaller-bugs@googlegroups.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 hare@suse.de, linux-fsdevel@vger.kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, 09 Oct 2023 17:45:57 +0800, Lizhi Xu wrote:
> When sbi->flag is JFS_NOINTEGRITY in lmLogOpen(), log->bdev_handle can't
> be inited, so it value will be NULL.
> Therefore, add the "log ->no_integrity=1" judgment in lbmStartIO() to avoid such
> problems.
> 
> 

Applied to the vfs.super branch of the vfs/vfs.git tree.
Patches in the vfs.super branch should appear in linux-next soon.

Please report any outstanding bugs that were missed during review in a
new review to the original patch series allowing us to drop it.

It's encouraged to provide Acked-bys and Reviewed-bys even though the
patch has now been applied. If possible patch trailers will be updated.

Note that commit hashes shown below are subject to change due to rebase,
trailer updates or similar. If in doubt, please check the listed branch.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
branch: vfs.super

[1/1] jfs: fix log->bdev_handle null ptr deref in lbmStartIO
      https://git.kernel.org/vfs/vfs/c/dc869ef84f26


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
