Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC2582C600
	for <lists+jfs-discussion@lfdr.de>; Fri, 12 Jan 2024 20:48:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rONVK-00049r-OM;
	Fri, 12 Jan 2024 19:47:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1rONVJ-00049j-NR
 for jfs-discussion@lists.sourceforge.net;
 Fri, 12 Jan 2024 19:47:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YFQmx/a3iiDm1MzmbUG+dHarXEG4XZFrZQQPcp0hA3w=; b=JuHq1S3/3JiNruKdtWfekkegpw
 /jlbdmy+dNTnpMEg5sHEG5vwP+2asy1Xv7aASvwAG+ZQ0wi/MFhSN/WammeZ2NcE+fwsVzgJZOgvw
 kEHQ17hLkK/UgQtJM9f+bFMk+xUWnbR7szmPbT0RShiwop9sK1PAV8VrUXWfdGERejsw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YFQmx/a3iiDm1MzmbUG+dHarXEG4XZFrZQQPcp0hA3w=; b=kkxu+sLSLzuWKsYQX2KkysQ6M4
 DuX83v2ZF2mxMaFB3lJOOmTtre7Qv6r3S0lzV9nh5Ldq5VuVAt9TGJwNw9q8uPPBDwQThSOfg0RvE
 5n71FaquUojnrOuxn0mm0DWS2/vMEME+g8/CUimVqlMJTbGqX+na41GYgl/s7qMVHrWU=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rONVC-0001DY-Mt for jfs-discussion@lists.sourceforge.net;
 Fri, 12 Jan 2024 19:47:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 3210BB82379;
 Fri, 12 Jan 2024 19:31:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C207C433F1;
 Fri, 12 Jan 2024 19:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1705087893;
 bh=FvQJcr9tDVeV5tst8ttPoAR1yrrsKUrGxfwyN8pTbuM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hv2Wyt/S8vaNTb/tchv5D88XUyCfkJBo6JFVkePkT93GwR2Rl9JY2ky40Ld7UulEi
 9bivVJUyX7QGDVhUNOqNyzPFkK26QvLlYJFb3UAsENrWVme9bzr+JJyBISw+cTlcft
 VLwK0VeqxJfHiuSpYUOgL4R2qWQFwxJ5lkc7ljIg=
Date: Fri, 12 Jan 2024 20:31:30 +0100
To: Mikhail Ukhin <mish.uxin2012@yandex.ru>
Message-ID: <2024011216-rubdown-buddhist-6d1e@gregkh>
References: <20240112165007.4764-1-mish.uxin2012@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240112165007.4764-1-mish.uxin2012@yandex.ru>
X-Spam-Score: -4.6 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jan 12, 2024 at 07:50:07PM +0300,
 Mikhail Ukhin wrote:
 > Fuzzing of 5.10 stable branch shows NULL pointer dereference happens in
 > lbmStartIO() on log->bdev pointer. The reason for bdev being [...] 
 Content analysis details:   (-4.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rONVC-0001DY-Mt
Subject: Re: [Jfs-discussion] [PATCH 5.10/5.15] jfs: add check if log->bdev
 is NULL in lbmStartIO()
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
From: Greg Kroah-Hartman via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jens Axboe <axboe@kernel.dk>, Dave Kleikamp <shaggy@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>,
 lvc-project@linuxtesting.org, Pavel Koshutin <koshutin.pavel@yandex.ru>,
 jfs-discussion@lists.sourceforge.net, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Artem Sadovnikov <ancowi69@gmail.com>,
 Mikhail Ivanov <iwanov-23@bk.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Jan 12, 2024 at 07:50:07PM +0300, Mikhail Ukhin wrote:
> Fuzzing of 5.10 stable branch shows NULL pointer dereference happens in 
> lbmStartIO() on log->bdev pointer. The reason for bdev being NULL is the 
> JFS_NOINTEGRITY flag is set on mount of this fs. When this flag is enabled,
> it results in the open_dummy_log function being called, which initializes a
> new dummy_log, but does not assign a value to bdev.
> 
> The error is fixed in 5.18 by commit
> 07888c665b405b1cd3577ddebfeb74f4717a84c4.
> Backport of this commit is too intrusive, so it is more reasonable to apply
> a small patch to fix this issue.
> 
> Found by Linux Verification Center (linuxtesting.org) with syzkaller.
> 
> Signed-off-by: Mikhail Ukhin <mish.uxin2012@yandex.ru>
> Signed-off-by: Mikhail Ivanov <iwanov-23@bk.ru>
> Signed-off-by: Pavel Koshutin <koshutin.pavel@yandex.ru>
> Signed-off-by: Artem Sadovnikov <ancowi69@gmail.com>
> ---
>  fs/jfs/jfs_logmgr.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Who is using jfs in 5.10 and 5.15?  Why not just mark the filesystem as
BROKEN there instead?  If you need to access your ancient filesystem
image just use a newer kernel.

For filesystems that are not used in older kernels, work like this feels
odd, especially for something just like a NULL dereference which doesn't
do much, right?

thanks,

greg k-h


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
