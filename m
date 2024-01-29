Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26ED884156B
	for <lists+jfs-discussion@lfdr.de>; Mon, 29 Jan 2024 23:13:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rUZsn-0005Nm-T9;
	Mon, 29 Jan 2024 22:13:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rUZsm-0005NX-DY
 for jfs-discussion@lists.sourceforge.net;
 Mon, 29 Jan 2024 22:13:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JCXBqSej7X9xmvzctrfkV79cun5I2fkyVI7US30JjdE=; b=QWbvyyA8Cj3b3JkPv51NdH4gJh
 mK/RHx/sPSHKeTr7QJBsmFw79ik7tqHD/Ppp7fp2cc49OZsHMtl84pr5x3Xb1KjHsAUpn03C1g2it
 E8BoYsfeN8I4tvvaWel4UDVuYxJj/4cX/ZD9Sx54g9gspb59+4WzE/PyMLssnWLkrUHI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JCXBqSej7X9xmvzctrfkV79cun5I2fkyVI7US30JjdE=; b=g0UE3ONULya9Elu0bb8xHHiI2l
 Gpf4qY5JIGehAcvsEnMmBY0GeUFq3mIN+yrjkD3MrbCSdAXPjFbA3n+OgdzJLEThufXAFFfJQgPKo
 PY4ezYieUvGqLGp+X15Ti3WttwXOwRPane6cSofpeq8wIXRDrha4wMs+zN0CGT2jPO60=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rUZsj-0004mD-PT for jfs-discussion@lists.sourceforge.net;
 Mon, 29 Jan 2024 22:13:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=JCXBqSej7X9xmvzctrfkV79cun5I2fkyVI7US30JjdE=; b=mFuXXzitjEl/D4S9MwNvPSNvyP
 4Zh9bQ56Tivc6zdM3tycSmZ40z9HLNru8T8m8ZVEDTGHaJiA9wgXMvBl0c9B/SVlY+zCehUbpIH+n
 GgiIAVCSy5ViY3Qez4hJx2+cZB3bPhngceltE5+kzpWf8EpnXvfTu4uih72uTFCcKqkLOHM+FWY4e
 bQSzjnjiiXu0xmKfhzDFZ+hUALCv9fKZ696W1uj8eZQW/QgQmv9SdBGUtT2Ex7nmh2D6u3NDcUvvD
 9pDr27IRWQlHXdaSRd9HUyvHK8THCcXGvImArL4HtmDtlJgsbyZ1jfIijH4rkNA3KKOHpOSbtpXNd
 4y41i2Fg==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rUZsW-000000080xV-08D6;
 Mon, 29 Jan 2024 22:13:20 +0000
Date: Mon, 29 Jan 2024 22:13:19 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <Zbgi_3MyT0rL7oZs@casper.infradead.org>
References: <20231011143937.31996-1-ghandatmanas@gmail.com>
 <Zba9zRWq6rZhWn-p@casper.infradead.org>
 <a25c75af-c961-4ca6-9810-dbcfe64753d5@oracle.com>
 <Zbe8c_CPNP8IdphB@casper.infradead.org>
 <551e1e86-f990-487a-ad88-53799df0882a@oracle.com>
 <ZbfumG4uLUwZkzlf@casper.infradead.org>
 <37af8f84-98bc-4733-bd9c-102b62fdd028@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <37af8f84-98bc-4733-bd9c-102b62fdd028@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 29, 2024 at 03:17:27PM -0600,
 Dave Kleikamp wrote:
 > On 1/29/24 12:29PM, Matthew Wilcox wrote: > > On Mon, Jan 29,
 2024 at 09:00:56AM
 -0600, Dave Kleikamp wrote: > > > On 1/29/24 8:55AM, M [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rUZsj-0004mD-PT
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

On Mon, Jan 29, 2024 at 03:17:27PM -0600, Dave Kleikamp wrote:
> On 1/29/24 12:29PM, Matthew Wilcox wrote:
> > On Mon, Jan 29, 2024 at 09:00:56AM -0600, Dave Kleikamp wrote:
> > > On 1/29/24 8:55AM, Matthew Wilcox wrote:
> > > > On Mon, Jan 29, 2024 at 08:39:18AM -0600, Dave Kleikamp wrote:
> > > > > On 1/28/24 2:49PM, Matthew Wilcox wrote:
> > > > > > On Wed, Oct 11, 2023 at 08:09:37PM +0530, Manas Ghandat wrote:
> > > > > > > Currently while joining the leaf in a buddy system there is shift out
> > > > > > > of bound error in calculation of BUDSIZE. Added the required check
> > > > > > > to the BUDSIZE and fixed the documentation as well.
> > > > > > 
> > > > > > This patch causes xfstests to fail frequently.  The one this trace is
> > > > > > from was generic/074.
> > > > > 
> > > > > Thanks for catching this. The sanity test is not right, so we need to revert
> > > > > that one.
> > > > 
> > > > Unfortunately, my overnight test run with this patch reverted crashed
> > > > again with the same signature.  I also reverted the parent commit,
> > > > and when that crashed I also reverted the parent of that.  Which also
> > > > crashed.
> > > > 
> > > > So maybe there's something else that makes this unstable.  Or maybe my
> > > > bisect went wrong.  Or _something_.  Anyway, I'm going to spend much of
> > > > today hammering on generic/074 with various kernel versions and see what
> > > > I can deduce.
> > > > 
> > > > So far I see no evidence that v6.7 crashes with g/074.  And I know that
> > > > next-20240125 does crash with g/074.  I'm pretty sure that v6.8-rc1 also
> > > > crashes with g/074, but will confirm that.
> > > 
> > > I'll try to beat on it too and see what I find.
> > > 
> > > Sasha, maybe hold up on to all the jfs patches for the time being.
> > 
> > I have it reproducing easily on cca974daeb6c.  I ran it a lot on
> > e0e1958f4c36 and have not reproduced it.  So I'm going back to my
> > earlier assertion that cca974daeb6c is bad.  Now, maybe other commits
> > are also bad?
> 
> I was able to reproduce it too, but not after reverting that one. I believe
> it is the only one causing problems.
> 
> I only asked Sasha to hold the other ones as a precaution until we were more
> confident that this one was the problem.

I can't reproduce any problem with v6.8-rc1 + this one reverted.
So I'm not sure what my overnight soak test found.  I'll try a few other
things ...


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
