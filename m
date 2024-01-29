Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C256C84091D
	for <lists+jfs-discussion@lfdr.de>; Mon, 29 Jan 2024 15:56:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rUT3P-0005VK-T2;
	Mon, 29 Jan 2024 14:56:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rUT3N-0005VE-Bw
 for jfs-discussion@lists.sourceforge.net;
 Mon, 29 Jan 2024 14:56:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TrkooSyhdXbj7EF1JaDzY488CLjZJ3kn1skh2fGPgEo=; b=OItQwFMdM7YOteJ2MouF99a6Ap
 FMKNE+kYV4TqRSuvKxZGiplqJVKTHrNF1DZIZK0oME0TR81YPbNFRyj0PVgcCc+MMllCrNhv0xcar
 417t9ByXyL4VOdzgMOT0g0joHDkmqs2YtWKqCx3zoyrz3+13gntXQR+jNIAfcd51/mAQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TrkooSyhdXbj7EF1JaDzY488CLjZJ3kn1skh2fGPgEo=; b=UwoXPAuCsmQ+Q5p/kZpwuCdCj7
 P0hyOBtZLsBXnkwJHtyaa2/IscpXcws+IfFYVFQcwy2akv67ZPqT17BntzFHFPreISbqpN5jHA9sz
 gqr54536LLPPViGirbxv62F+3QEt8TB+TexXgQVwn+LSNqlarq9KJPszZcu8bKtg29S0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rUT3J-0006aL-38 for jfs-discussion@lists.sourceforge.net;
 Mon, 29 Jan 2024 14:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=TrkooSyhdXbj7EF1JaDzY488CLjZJ3kn1skh2fGPgEo=; b=cLKcFRaKqigr4dZ0QaOE1HnMHu
 RemHrAs+ZoXxi+b9GuSiAyclCHERfe+jOpQlxnElBP42XDW1E1h+zG2etAi54e7Yt1orheef5V/Pp
 m7XXzg5Yqgn/dWiEeC3TeXM5UeWkt6Ma6ma+ir/QqXeqa24fcBf2nTWdnwHZV9yXJl0AR+vFnarI7
 Jc+fiesQrKk6m6315E/j+BHS3zIZ98Qewyd6vlJMBO33LLewhzCC98g/fRVJOJJZBn6Kq5ToKbrNX
 hoDLClS4PbRzr5Hc9exJTDD3UKE4XVRibaeNgf0s50jL9ucAmtejtZHRue2xUGBknUxO+vP6wJizq
 VVVhHQNw==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rUT35-00000006uAF-1ms1;
 Mon, 29 Jan 2024 14:55:47 +0000
Date: Mon, 29 Jan 2024 14:55:47 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <Zbe8c_CPNP8IdphB@casper.infradead.org>
References: <20231011143937.31996-1-ghandatmanas@gmail.com>
 <Zba9zRWq6rZhWn-p@casper.infradead.org>
 <a25c75af-c961-4ca6-9810-dbcfe64753d5@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a25c75af-c961-4ca6-9810-dbcfe64753d5@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 29, 2024 at 08:39:18AM -0600,
 Dave Kleikamp wrote:
 > On 1/28/24 2:49PM, Matthew Wilcox wrote: > > On Wed, Oct 11,
 2023 at 08:09:37PM
 +0530, Manas Ghandat wrote: > > > Currently while joini [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rUT3J-0006aL-38
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix shift-out-of-bounds in dbJoin
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
Cc: Sasha Levin <sashal@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Manas Ghandat <ghandatmanas@gmail.com>, linux-kernel@vger.kernel.org,
 syzbot+411debe54d318eaed386@syzkaller.appspotmail.com,
 Linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Jan 29, 2024 at 08:39:18AM -0600, Dave Kleikamp wrote:
> On 1/28/24 2:49PM, Matthew Wilcox wrote:
> > On Wed, Oct 11, 2023 at 08:09:37PM +0530, Manas Ghandat wrote:
> > > Currently while joining the leaf in a buddy system there is shift out
> > > of bound error in calculation of BUDSIZE. Added the required check
> > > to the BUDSIZE and fixed the documentation as well.
> > 
> > This patch causes xfstests to fail frequently.  The one this trace is
> > from was generic/074.
> 
> Thanks for catching this. The sanity test is not right, so we need to revert
> that one.

Unfortunately, my overnight test run with this patch reverted crashed
again with the same signature.  I also reverted the parent commit,
and when that crashed I also reverted the parent of that.  Which also
crashed.

So maybe there's something else that makes this unstable.  Or maybe my
bisect went wrong.  Or _something_.  Anyway, I'm going to spend much of
today hammering on generic/074 with various kernel versions and see what
I can deduce.

So far I see no evidence that v6.7 crashes with g/074.  And I know that
next-20240125 does crash with g/074.  I'm pretty sure that v6.8-rc1 also
crashes with g/074, but will confirm that.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
