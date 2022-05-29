Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FE9537301
	for <lists+jfs-discussion@lfdr.de>; Mon, 30 May 2022 01:51:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nvSh4-0004oo-2k; Sun, 29 May 2022 23:51:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <david@fromorbit.com>) id 1nvSh2-0004oi-HT
 for jfs-discussion@lists.sourceforge.net; Sun, 29 May 2022 23:51:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VEb6aDa0jK+52Koj6FIrh9T3PErGzBSBMYzOJzlkvN4=; b=aSynXDBG/m+HHz8izr/HlGlH/u
 14XGZ4/l+tBr/srwa4vwmayRD/RKte9F2jadwjMhXKMJg6N0qX1dTnVrRQjlr2PpL0vdLxDzDzlh+
 EAOeLxBl3dFeCrL4BfWFwh42DnL4i5M2wLSJCw+M92kEGKKMAHTCo0CWtirFlB3tmYj0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VEb6aDa0jK+52Koj6FIrh9T3PErGzBSBMYzOJzlkvN4=; b=OboJxlHayiOuF7MeOPTB4JDNQQ
 CMmw5kS/p3zvf95vAtIoCXdx2pNQlauYuVkvw71TWQ9IRWOmutF98MOXAzCeabhD7huoasPZhTyyo
 ZIAWM/7txRnZ6tLZIOiVm7G857KtTJsZ8EMk/u0gHirlfLeXAvkpusoQdO9omzdx43Mw=;
Received: from mail104.syd.optusnet.com.au ([211.29.132.246])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nvSh0-0005Mc-8Z
 for jfs-discussion@lists.sourceforge.net; Sun, 29 May 2022 23:51:32 +0000
Received: from dread.disaster.area (pa49-181-2-147.pa.nsw.optusnet.com.au
 [49.181.2.147])
 by mail104.syd.optusnet.com.au (Postfix) with ESMTPS id 64732534783;
 Mon, 30 May 2022 09:51:24 +1000 (AEST)
Received: from dave by dread.disaster.area with local (Exim 4.92.3)
 (envelope-from <david@fromorbit.com>)
 id 1nvSgt-000Odq-0A; Mon, 30 May 2022 09:51:23 +1000
Date: Mon, 30 May 2022 09:51:22 +1000
From: Dave Chinner <david@fromorbit.com>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20220529235122.GJ3923443@dread.disaster.area>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220528000216.GG3923443@dread.disaster.area>
 <YpGF3ceSLt7J/UKn@casper.infradead.org>
 <20220528053639.GI3923443@dread.disaster.area>
 <YpJxEwl+t93pSKLk@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YpJxEwl+t93pSKLk@mit.edu>
X-Optus-CM-Score: 0
X-Optus-CM-Analysis: v=2.4 cv=e9dl9Yl/ c=1 sm=1 tr=0 ts=629406fc
 a=ivVLWpVy4j68lT4lJFbQgw==:117 a=ivVLWpVy4j68lT4lJFbQgw==:17
 a=kj9zAlcOel0A:10 a=oZkIemNP1mAA:10 a=7-415B0cAAAA:8
 a=nFtKY5cEK-91eS0LWzcA:9 a=CjuIK1q_8ugA:10 a=biEYGPWJfzWAr4FL6Ov7:22
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, May 28, 2022 at 02:59:31PM -0400,
 Theodore Ts'o wrote:
 > +linux-ext4 > > On Sat, May 28, 2022 at 03:36:39PM +1000, Dave Chinner
 wrote: > > The other filesystem that uses nobh is the standalone [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.29.132.246 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1nvSh0-0005Mc-8Z
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
 jfs-discussion@lists.sourceforge.net, Matthew Wilcox <willy@infradead.org>,
 "linux-ext4@vger.kernel.org Darrick J . Wong" <djwong@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sat, May 28, 2022 at 02:59:31PM -0400, Theodore Ts'o wrote:
> +linux-ext4
> 
> On Sat, May 28, 2022 at 03:36:39PM +1000, Dave Chinner wrote:
> > The other filesystem that uses nobh is the standalone ext2
> > filesystem that nobody uses anymore as the ext4 module provides ext2
> > functionality for distros these days. Hence there's an argument that
> > can be made for removing fs/ext2 as well. In which case, the whole
> > nobh problem goes away by deprecating and removing both the
> > filesysetms that use that infrastructure in 2 years time....
> 
> This got brought up at this past week's ext4 video chat, where Willy
> asked Jan (who has been maintaining ext2) whether he would be open to
> converting ext2 to use iomap.  The answer was yes.  So once jfs and
> ext2 are converted, we'll be able to nuke the nobh code.
> 
> From Willy's comments on the video chat, my understanding is that jfs
> was even simpler to convert that ext2, and this allows us to remove
> the nobh infrastructure without asking the question about whether it's
> time to remove jfs.

I disagree there - if we are changing code that has been unchanged
for a decade or more, there are very few users of that code, and
there's a good chance that data corruption regressions will result
from the changes being proposed, then asking the question "why take
the risk" is very pertinent.

"Just because we can" isn't a good answer. The best code is code we
don't have to write and maintain. If it's a burden to maintain and a
barrier to progress, then we should seriously be considering
removing it, not trying to maintain the fiction that it's a viable
supported production quality filesystem that people can rely on....

> > > We also need to convert more filesystems to use iomap.
> > 
> > We also need to deprecate and remove more largely unmaintained and
> > unused filesystems. :)
> 
> Well, Dave Kleikamp is still around and sends jfs pull requests from
> time to time, and so it's not as unmaintained as, say, fs/adfs,
> fs/freevxs, fs/hpfs, fs/minix, and fs/sysv.

Yes, but the changes that have been made over the past decade are
all small and minor - there's been no feature work, no cleanup work,
no attempt to update core infrastructure, etc. There's beeen no
serious attempts to modernise or update the code for a decade...

> As regards to minixfs, I'd argue that ext2 is a better reference file
> system than minixfs.  So..... are we ready to remove minixfs?  I could
> easily see that some folks might still have sentimental attachment to
> minixfs.  :-)

AFAIC, yes, minixfs and and those other ones should have been
deprecated long ago....

Cheers,

Dave.
-- 
Dave Chinner
david@fromorbit.com


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
