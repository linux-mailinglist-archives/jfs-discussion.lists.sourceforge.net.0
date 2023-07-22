Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2894075DD27
	for <lists+jfs-discussion@lfdr.de>; Sat, 22 Jul 2023 17:17:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qNELg-0000YO-UY;
	Sat, 22 Jul 2023 15:16:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1qNELf-0000YI-VV
 for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Jul 2023 15:16:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HiUGpSt6Egg+MS2aLFxRt3KaFhNG6+xPgABrKYmzyr8=; b=P8YUodOMMxRKufvA/QhcRtwDhQ
 8tp1BCmUf2kcVEPoEjHwZnhoVMZvIdIlsFeudOdJqYq4rhvCUTPKiSRa9TOMtMGrxqQt+w/kjuztD
 zOBoMLmTSmtIl9ul7IT7jboSa3jnPW5VJUK6rxez7Wnz2MLXUnDa50tFiDM+RAMe9vKk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HiUGpSt6Egg+MS2aLFxRt3KaFhNG6+xPgABrKYmzyr8=; b=K6LzR6RcrdpxZMzLSQ8aBN5Vsn
 YgaoDNblIFi3wh78SXDhWcUDun9j+yYb+YzI6VVsYzykvGZDlZxBguAt3Pq1HOHvkSc3jzOFJehYD
 xcs/BTwjUPAWmXmkavCdVaJOGPqHrLYSIG885fuh0FcON/e6vbzYeApFxTDjZ3+lLB1w=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qNELb-0007Nf-9Y for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Jul 2023 15:16:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3A89160AFF;
 Sat, 22 Jul 2023 15:16:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4455AC433C8;
 Sat, 22 Jul 2023 15:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1690038990;
 bh=+hYeT7T6DPZwTEKQlR3didhb4Jvj3drMs0VzlG3/1lQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VVdEekTxnTGAjwNai5zOnPmJ0F9Ybo4oPV4rfmkHNHALbj0Ff4R7UlK6FmR4nnUHL
 zIDhL1Ngn4CMukxGzQI5q90pkDfpQ16ad1TzMC1ne91tKpVRQPON7BiCKEj4UGpEKr
 9FgXWrRWZ+HPUJ8HPDdHt5lRWg9Xnal7U6pWMiBg=
Date: Sat, 22 Jul 2023 17:16:27 +0200
To: Aleksei Filippov <halip0503@gmail.com>
Message-ID: <2023072251-spokesman-zebra-908d@gregkh>
References: <20230722142401.71257-1-halip0503@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230722142401.71257-1-halip0503@gmail.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jul 22, 2023 at 05:24:01PM +0300, Aleksei Filippov
 wrote: > From: Alexei Filippov <halip0503@gmail.com> > > The lack of checking
 bmp->db_max_freebud in extBalloc() can lead to > shift out of b [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qNELb-0007Nf-9Y
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

On Sat, Jul 22, 2023 at 05:24:01PM +0300, Aleksei Filippov wrote:
> From: Alexei Filippov <halip0503@gmail.com>
> 
> The lack of checking bmp->db_max_freebud in extBalloc() can lead to
> shift out of bounds, so this patch prevents undefined behavior,
> because bmp->db_max_freebud == -1 only if there
> is no free space.

Please wrap at 72 columns properly.


> 
> Signed-off-by: Aleksei Filippov <halip0503@gmail.com>
> Reported-and-tested-by: syzbot+5f088f29593e6b4c8db8@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?id=01abadbd6ae6a08b1f1987aa61554c6b3ac19ff2
> ---
>  fs/jfs/jfs_extent.c | 5 +++++
>  1 file changed, 5 insertions(+)

What commit id does this fix?

Is it needed for stable kernels?  If so, please tag it as such.

thanks,

greg k-h


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
