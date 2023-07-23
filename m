Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CE075E221
	for <lists+jfs-discussion@lfdr.de>; Sun, 23 Jul 2023 15:40:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qNZJs-0001qq-EW;
	Sun, 23 Jul 2023 13:40:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1qNZJr-0001qk-GI
 for jfs-discussion@lists.sourceforge.net;
 Sun, 23 Jul 2023 13:40:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pn+8eAt3eoG98S+h3COOMQ9jBtYOipIubxxTH6FAcqU=; b=a266Avhl+tMBlHMa4hnOMNYqKE
 q7tZOG5dw0XhkDH2V1EsuWEcNQHDGIMJIg3ctaVwoXbDLTiSE9QEysBEGjmOPodVcY9Ad9d+NM/m5
 25a/AeDYy2/QtM9fhznXGGuP7vosDXFPn/W76OeNiDjebyUORP8KEgDqfishD8FyzEfw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pn+8eAt3eoG98S+h3COOMQ9jBtYOipIubxxTH6FAcqU=; b=FDyxcyX+R3JCqrHHMwUQd5yIbZ
 gGilVfIBS0qy7427AM1UyyamgvkCCkX/8xtjxArt9ytuwl2PjU2J/s7VTnpZrRyGtxYTr53AwpzR9
 ecD/wc0FHc/Mdh3Qar7FzvY87Veztr7VmLzXuResL4v1ibTVo7SFrq1iyspmFOOrLJkc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qNZJn-0000dQ-Vv for jfs-discussion@lists.sourceforge.net;
 Sun, 23 Jul 2023 13:40:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 373C560CF6;
 Sun, 23 Jul 2023 13:40:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16372C433C8;
 Sun, 23 Jul 2023 13:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1690119606;
 bh=2qiqpZSaIvnpVHGoHfxzcoxZzo7pPhHH90rg5KQtN4s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1yo4Fl2HH7IPz/IInGuugHIsALAAk24qu2ZxhUeKLg3LvE5RoNUq1Xb52PD/KYhPd
 GVJ0UPQfZjdRQm7uK5t2saiCcidQNRlMG2UZ9YWSvJ1TCVPAXS34dWXtTfN8gFvg5d
 xGHUjup09WZQ6IWk2ps6FLlnU5wvPOtkwBYxAUPg=
Date: Sun, 23 Jul 2023 15:40:03 +0200
To: Aleksei Filippov <halip0503@gmail.com>
Message-ID: <2023072335-penniless-coleslaw-3aac@gregkh>
References: <2023072318-semantic-payee-0162@gregkh>
 <20230723132959.4945-1-halip0503@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230723132959.4945-1-halip0503@gmail.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jul 23, 2023 at 04:29:59PM +0300, Aleksei Filippov
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
X-Headers-End: 1qNZJn-0000dQ-Vv
Subject: Re: [Jfs-discussion] [PATCH v3] jfs: validate max amount of blocks
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

On Sun, Jul 23, 2023 at 04:29:59PM +0300, Aleksei Filippov wrote:
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
> Fix commit message.

The --- information for the version goes below the first --- line, not
the last.  Look at the examples on the mailing lists for the proper
format.

thanks,

greg k-h


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
