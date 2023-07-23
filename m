Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D2575E1AC
	for <lists+jfs-discussion@lfdr.de>; Sun, 23 Jul 2023 14:07:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qNXrI-0002qz-3e;
	Sun, 23 Jul 2023 12:06:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1qNXrH-0002qt-Db
 for jfs-discussion@lists.sourceforge.net;
 Sun, 23 Jul 2023 12:06:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cuWVSgQJmRHUBzZqWyia7Bt8mCUxOQzYZlDoaWFf2EI=; b=TluGGsmOCEz7AJjFbYt4clM0x+
 JafZnBIwPNuLj3lPChCMUgY5bA3ZMGclraxBuUmjjkl2Q++7Z2t/pEJIG0bE2Z5ptpQFjKGXX+y9T
 5sVZk6lkBvHVcUQrYqzRHE8zGhzV1V9nLaZDGsJGR/nzjUrqvvywFggbsKCDjzGdh8kU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cuWVSgQJmRHUBzZqWyia7Bt8mCUxOQzYZlDoaWFf2EI=; b=WSPnuG01mmuJjSakyQeguVx7qo
 3Pesc3KcwSf6t2kJ/nev5aOKCxlUXmgtNxca8HaZCLtDNrn3oEVfC1+EEvXZAp6GiLjaMMc5aYKDj
 IspaC/otHJzWrjj3ihdeQ16CCo0uBNbaUSPcx7/55ZyAGCafcLpREsgtK34ddMSvDFIQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qNXrE-00HFCq-CO for jfs-discussion@lists.sourceforge.net;
 Sun, 23 Jul 2023 12:06:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0665060CE8;
 Sun, 23 Jul 2023 12:06:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D7DBC433C7;
 Sun, 23 Jul 2023 12:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1690113993;
 bh=lCA7wyn7EJy5EJxSIML6nBv4d37+7+FxeiGSeIwj+JU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O5TsTrihRy4Hqcqkwhs0jdj5vodaDq5XpA+yJobPmqyDIwvJ9Bz3CIshuo/2IwydS
 my68wzYF+XWCIcY5vy0876bqDA6YxgbB4cam9PEQ7GwBDctgcLvsRuzLyXJrhtvg4z
 c2SODRfZ3znAgrWmjO4zMQ+A9Y0ZPSfgybGBoXr8=
Date: Sun, 23 Jul 2023 14:06:30 +0200
To: Aleksei Filippov <halip0503@gmail.com>
Message-ID: <2023072318-semantic-payee-0162@gregkh>
References: <2023072251-spokesman-zebra-908d@gregkh>
 <20230723120209.7963-1-halip0503@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230723120209.7963-1-halip0503@gmail.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jul 23, 2023 at 03:02:09PM +0300, Aleksei Filippov
 wrote: > From: Alexei Filippov <halip0503@gmail.com> > > The lack of checking
 bmp->db_max_freebud in extBalloc() can lead to > shift out of b [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qNXrE-00HFCq-CO
Subject: Re: [Jfs-discussion] [PATCH] jfs: validate max amount of blocks
 before allocation.
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
From: Greg KH via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Greg KH <gregkh@linuxfoundation.org>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzbot+5f088f29593e6b4c8db8@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun, Jul 23, 2023 at 03:02:09PM +0300, Aleksei Filippov wrote:
> From: Alexei Filippov <halip0503@gmail.com>
> 
> The lack of checking bmp->db_max_freebud in extBalloc() can lead to
> shift out of bounds, so this patch prevents undefined behavior, because
> bmp->db_max_freebud == -1 only if there is no free space.
> 
> Signed-off-by: Aleksei Filippov <halip0503@gmail.com>
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Reported-and-tested-by: syzbot+5f088f29593e6b4c8db8@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?id=01abadbd6ae6a08b1f1987aa61554c6b3ac19ff2
> ---
>  fs/jfs/jfs_extent.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/fs/jfs/jfs_extent.c b/fs/jfs/jfs_extent.c
> index ae99a7e232ee..a82751e6c47f 100644
> --- a/fs/jfs/jfs_extent.c
> +++ b/fs/jfs/jfs_extent.c
> @@ -311,6 +311,11 @@ extBalloc(struct inode *ip, s64 hint, s64 * nblocks, s64 * blkno)
>  	 * blocks in the map. in that case, we'll start off with the
>  	 * maximum free.
>  	 */
> +
> +	/* give up if no space left */
> +	if (bmp->db_maxfreebud == -1)
> +		return -ENOSPC;
> +
>  	max = (s64) 1 << bmp->db_maxfreebud;
>  	if (*nblocks >= max && *nblocks > nbperpage)
>  		nb = nblks = (max > nbperpage) ? max : nbperpage;
> -- 
> 2.25.1
> 

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/process/submitting-patches.rst for what
  needs to be done here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
