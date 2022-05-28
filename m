Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F80536A2B
	for <lists+jfs-discussion@lfdr.de>; Sat, 28 May 2022 04:16:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1num02-0006pu-Et; Sat, 28 May 2022 02:16:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1num00-0006pn-Us
 for jfs-discussion@lists.sourceforge.net; Sat, 28 May 2022 02:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SyeNBUfPcaeHo7VtweigGBLJbW/NG3Q0PDwuVn2bi8g=; b=eC2IT0MHx2Snm9kBu1BJQ8kc1o
 3f//+iI4gJxB5CRK46Gef/FPsrktTcko3HFDFQe+P9dnjK2T9o+1AJpTjc0xoWFo2LgzHi9ElnOiv
 +xxGsEOGY9PYvSY/H6RYlYcaUxHSjH2gAcn7w3GCLINd9iY7Hkfu5XHeN4rtqju4FapA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SyeNBUfPcaeHo7VtweigGBLJbW/NG3Q0PDwuVn2bi8g=; b=c1vbWkRHelmwVo+oHB6Q3AKyhJ
 Gp1iDrKCqY2ZN1GPnkIKDSBvssjq2xUvH3ZFp2FpZAZk5KtT+Z1NiFJ9kIgVqKjP16ayxY0vk6FKj
 TL8yqQoMrjyn9dKqdiC5K8OzZaGu7Zp3gFIhj9grVxFziq7Xm56pHPUbJJkx+Tp6XWi8=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nulzy-0004fE-5m
 for jfs-discussion@lists.sourceforge.net; Sat, 28 May 2022 02:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=SyeNBUfPcaeHo7VtweigGBLJbW/NG3Q0PDwuVn2bi8g=; b=MrxDDijaML8YZj58J2v+6UElBt
 ognuK/xhJpN5Z9UlAM1mAPurPX20WaLlN6uD74nc/vPVPML5UljiAThylWRdjWR0Zl1Ix2SUNQx1K
 RCR2vDyMTijFJQBCox0voP+rr6rP7FPZS/iL9TRSJ4DzS+yi715WrdeUGEySuJsSXyDmhAVYPkcl9
 6dJMBR1PEX0bXKroUeM/QHHpVSNGZgCF8s01jhDIfysFyMtHeh+ZK74hUA0UoJaxuH0IXBnV7durF
 V7wNAW4IbAcikjOdAhgp+bwmx4Ntt/NqX1SGvezydp9f//IKCqtmDhrYHt2lMcE2RyYq0YCdzli7/
 pkuJUImQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nulzh-002XgC-UH; Sat, 28 May 2022 02:15:58 +0000
Date: Sat, 28 May 2022 03:15:57 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Dave Chinner <david@fromorbit.com>
Message-ID: <YpGF3ceSLt7J/UKn@casper.infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220528000216.GG3923443@dread.disaster.area>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220528000216.GG3923443@dread.disaster.area>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, May 28, 2022 at 10:02:16AM +1000, Dave Chinner wrote:
 > On Thu, May 26, 2022 at 08:29:01PM +0100, Matthew Wilcox (Oracle) wrote:
 > > This patchset does not work. It will eat your filesystem. D [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nulzy-0004fE-5m
Subject: Re: [Jfs-discussion] [RFC PATCH 0/9] Convert JFS to use iomap
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
Cc: linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 jfs-discussion@lists.sourceforge.net, "Darrick J . Wong" <djwong@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sat, May 28, 2022 at 10:02:16AM +1000, Dave Chinner wrote:
> On Thu, May 26, 2022 at 08:29:01PM +0100, Matthew Wilcox (Oracle) wrote:
> > This patchset does not work.  It will eat your filesystem.  Do not apply.
> > 
> > The bug starts to show up with the fourth patch ("Convert direct_IO write
> > support to use iomap").  generic/013 creates a corrupt filesystem and
> > fsck fails to fix it, which shows all kinds of fun places in xfstests
> > where we neglect to check that 'mount' actually mounted the filesystem.
> > set -x or die.
> > 
> > I'm hoping one of the people who knows iomap better than I do can just
> > point at the bug and say "Duh, it doesn't work like that".
> > 
> > It's safe to say that every patch after patch 6 is untested.  I'm not
> > convinced that I really tested patch 6 either.
> 
> So the question I have to ask here is "why even bother?".
> 
> JFS is a legacy filesystem, and the risk of breaking stuff or
> corrupting data and nobody noticing is really quite high.
> 
> We recently deprecated reiserfs and scheduled it's removal because
> of the burden of keeping it up to date with VFS changes, what makes
> JFS any different in this regard?

Deprecating and scheduling removal is all well and good (and yes,
we should probably have a serious conversation about when we should
remove JFS), but JFS is one of the two users of the nobh infrastructure.
If we want to get rid of the nobh infrastructure (which I do), we need
to transition JFS to some other infrastructure.

We also need to convert more filesystems to use iomap.  I really wanted
to NAK the ntfs3 submission on the basis that it was still BH based,
but with so many existing filesystems using the BH infrastructure,
that's not a credible thing to require.

So JFS stood out to me as a filesystem which uses infrastructure that we
can remove fairly easily, one which doesn't get a whole lot of patches,
one that doesn't really use a lot of the BH infrastructure anyway and
one which can serve as an example for more ... relevant filesystems.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
