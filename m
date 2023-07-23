Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BA375E276
	for <lists+jfs-discussion@lfdr.de>; Sun, 23 Jul 2023 16:11:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qNZo6-0006Sm-G7;
	Sun, 23 Jul 2023 14:11:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1qNZo5-0006SY-7m
 for jfs-discussion@lists.sourceforge.net;
 Sun, 23 Jul 2023 14:11:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kidOeTac0cqQBPvxnXL9Mfgu2G4ZJiC8JuccjoG9c8k=; b=mf41df6nOXIARtFdCfvF92kaht
 izkAT6Um6A1FXt4Lht0p2LlKHLBzPEZ7/D05f5bYLUThzy6om2ZbcviSvrK//4SYFTrNKOqOpwcPG
 m9Bz5wlGkLGYJR7xPdJIh1QVQ/ybUAbhaXQb7IIg6CTd0E7YsoxEItxbKlQASE5WufDU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kidOeTac0cqQBPvxnXL9Mfgu2G4ZJiC8JuccjoG9c8k=; b=LoxFnUURdO1RP8v2D3/dwSpau9
 QubTyAkrYWjHChK/afQ5g9PwuYavCC+82+iMucAOstA+QOnq7rN49vSaa16kzoP7MBo79A2OgJiJM
 lBGCzgNnqHgtKBNQhV/pcml8PI1anVxtvG2a5ahbAdZ6wiigD+TO7Bf9kCcAflfsVnRE=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qNZnz-00HJT3-Vj for jfs-discussion@lists.sourceforge.net;
 Sun, 23 Jul 2023 14:11:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9925360BB8;
 Sun, 23 Jul 2023 14:11:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A667BC433C9;
 Sun, 23 Jul 2023 14:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1690121481;
 bh=inYvgvKYYJKNx3G4HfgycJVN9oLGjVwFXM3dGHFeqd8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LPHBHCRlCnA5dZ01QK1CJwDW0sYEr0Hkx64TQaYkm97FgCTFaOJviESO5NY+sT4ou
 vSzvxxsMO5dpO13IIILC1hiVc2jNbHJjH6i52um+ZZ8HTjFHZC5lvFBV2asCAOwE8R
 pBVby2by/FQB5dAorgBi81MHWCFF97d8N1RaXO/Q=
Date: Sun, 23 Jul 2023 16:11:18 +0200
To: Aleksei Filippov <halip0503@gmail.com>
Message-ID: <2023072336-seventy-untangled-cbba@gregkh>
References: <2023072335-penniless-coleslaw-3aac@gregkh>
 <20230723135822.5362-1-halip0503@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230723135822.5362-1-halip0503@gmail.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jul 23, 2023 at 04:58:22PM +0300, Aleksei Filippov
 wrote: > From: Alexei Filippov <halip0503@gmail.com> > > The lack of checking
 bmp->db_max_freebud in extBalloc() can lead to > shift out of b [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qNZnz-00HJT3-Vj
Subject: Re: [Jfs-discussion] [PATCH v4] jfs: validate max amount of blocks
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

On Sun, Jul 23, 2023 at 04:58:22PM +0300, Aleksei Filippov wrote:
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
> Changes:
> Fix commit message.
>  fs/jfs/jfs_extent.c | 5 +++++
>  1 file changed, 5 insertions(+)

{sigh}

Please, take some time, read the documentation for how to do this
correctly.  Wait a day, and then submit it again, properly.

Also, do you have a jfs system?  Isn't this filesystem obsolete?

thanks,

greg k-h


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
