Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF8F536AEE
	for <lists+jfs-discussion@lfdr.de>; Sat, 28 May 2022 07:37:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nup86-0005H3-41; Sat, 28 May 2022 05:36:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <david@fromorbit.com>) id 1nup84-0005Gx-U8
 for jfs-discussion@lists.sourceforge.net; Sat, 28 May 2022 05:36:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ECJGuTsh0XjySe74CAnI841LdV6wu+FJ6OFWAUErlvg=; b=UwbxvcfY+QxtYICaObnJePpLgD
 cEWIB7y4NJ11ArTu1p3R+A7v79CpkQTr8fE+vmu8SPOWcRYI4loAFrbVZ4lc6f06+fPLYLk5msNmf
 rPMLqH3Jj9DafyVSZDmcokvTNr2xDfYD/7RoCbFT7iatmFdgE9hT4vpGs6mbpbmiig94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ECJGuTsh0XjySe74CAnI841LdV6wu+FJ6OFWAUErlvg=; b=IkVhvTs23mrlErOQVS1jsS9io+
 /j3QKo340FLoFoIAmQYurMmdPClDuzMvK6Z2LdiAhJQ8Bcy8fGpzsayEvtdUKepSk5uM/S3MD3BkI
 mm4Ke6qU7PmHRfRoVmaYf89Md3n5Uu7HJwSPCehuPecxEJisFBlSrvMBV7r1Xm+QJ+eI=;
Received: from mail105.syd.optusnet.com.au ([211.29.132.249])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nup83-007MNU-0n
 for jfs-discussion@lists.sourceforge.net; Sat, 28 May 2022 05:36:49 +0000
Received: from dread.disaster.area (pa49-181-2-147.pa.nsw.optusnet.com.au
 [49.181.2.147])
 by mail105.syd.optusnet.com.au (Postfix) with ESMTPS id D1F9510C8E4E;
 Sat, 28 May 2022 15:36:40 +1000 (AEST)
Received: from dave by dread.disaster.area with local (Exim 4.92.3)
 (envelope-from <david@fromorbit.com>)
 id 1nup7v-00HIql-Hc; Sat, 28 May 2022 15:36:39 +1000
Date: Sat, 28 May 2022 15:36:39 +1000
From: Dave Chinner <david@fromorbit.com>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20220528053639.GI3923443@dread.disaster.area>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220528000216.GG3923443@dread.disaster.area>
 <YpGF3ceSLt7J/UKn@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YpGF3ceSLt7J/UKn@casper.infradead.org>
X-Optus-CM-Score: 0
X-Optus-CM-Analysis: v=2.4 cv=deDjYVbe c=1 sm=1 tr=0 ts=6291b4e9
 a=ivVLWpVy4j68lT4lJFbQgw==:117 a=ivVLWpVy4j68lT4lJFbQgw==:17
 a=kj9zAlcOel0A:10 a=oZkIemNP1mAA:10 a=7-415B0cAAAA:8
 a=DlPPC4AEmJpWGZdN3nAA:9 a=CjuIK1q_8ugA:10 a=biEYGPWJfzWAr4FL6Ov7:22
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, May 28, 2022 at 03:15:57AM +0100,
 Matthew Wilcox wrote:
 > On Sat, May 28, 2022 at 10:02:16AM +1000, Dave Chinner wrote: > > On Thu,
 May 26, 2022 at 08:29:01PM +0100, Matthew Wilcox (Oracle) wr [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.29.132.249 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nup83-007MNU-0n
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

On Sat, May 28, 2022 at 03:15:57AM +0100, Matthew Wilcox wrote:
> On Sat, May 28, 2022 at 10:02:16AM +1000, Dave Chinner wrote:
> > On Thu, May 26, 2022 at 08:29:01PM +0100, Matthew Wilcox (Oracle) wrote:
> > > This patchset does not work.  It will eat your filesystem.  Do not apply.
> > > 
> > > The bug starts to show up with the fourth patch ("Convert direct_IO write
> > > support to use iomap").  generic/013 creates a corrupt filesystem and
> > > fsck fails to fix it, which shows all kinds of fun places in xfstests
> > > where we neglect to check that 'mount' actually mounted the filesystem.
> > > set -x or die.
> > > 
> > > I'm hoping one of the people who knows iomap better than I do can just
> > > point at the bug and say "Duh, it doesn't work like that".
> > > 
> > > It's safe to say that every patch after patch 6 is untested.  I'm not
> > > convinced that I really tested patch 6 either.
> > 
> > So the question I have to ask here is "why even bother?".
> > 
> > JFS is a legacy filesystem, and the risk of breaking stuff or
> > corrupting data and nobody noticing is really quite high.
> > 
> > We recently deprecated reiserfs and scheduled it's removal because
> > of the burden of keeping it up to date with VFS changes, what makes
> > JFS any different in this regard?
> 
> Deprecating and scheduling removal is all well and good (and yes,
> we should probably have a serious conversation about when we should
> remove JFS), but JFS is one of the two users of the nobh infrastructure.
> If we want to get rid of the nobh infrastructure (which I do), we need
> to transition JFS to some other infrastructure.

Sure, but ... Devil's Advocate.

The other filesystem that uses nobh is the standalone ext2
filesystem that nobody uses anymore as the ext4 module provides ext2
functionality for distros these days. Hence there's an argument that
can be made for removing fs/ext2 as well. In which case, the whole
nobh problem goes away by deprecating and removing both the
filesysetms that use that infrastructure in 2 years time....

> We also need to convert more filesystems to use iomap.

We also need to deprecate and remove more largely unmaintained and
unused filesystems. :)

> I really wanted
> to NAK the ntfs3 submission on the basis that it was still BH based,
> but with so many existing filesystems using the BH infrastructure,
> that's not a credible thing to require.

Until ext4 is converted to use iomap, we realistically cannot ask
anyone to use iomap....

> So JFS stood out to me as a filesystem which uses infrastructure that we
> can remove fairly easily, one which doesn't get a whole lot of patches,
> one that doesn't really use a lot of the BH infrastructure anyway and
> one which can serve as an example for more ... relevant filesystems.

Isn't that the entire purpose of fs/ext2 still existing these days?
i.e. to be the simple "reference" filesystem for Linux?

Cheers,

Dave.
-- 
Dave Chinner
david@fromorbit.com


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
