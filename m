Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B76536948
	for <lists+jfs-discussion@lfdr.de>; Sat, 28 May 2022 02:02:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nujuV-00088H-GQ; Sat, 28 May 2022 00:02:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <david@fromorbit.com>) id 1nujuU-00088B-5t
 for jfs-discussion@lists.sourceforge.net; Sat, 28 May 2022 00:02:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bsK39iMV59F3hw1OTXKSA4rCpyAXPm0DLtjPZNDAA9A=; b=LFPz5j1XNKJLREr7CL4PqwzVKd
 bBDhbrj47kfHmr4FCil4VZck+G74zNXT0mdeEqQmxYcXTdPyZ8EhONBOkGWUg7NaxDX5B6FZ7QfXr
 vWp2gDvs2SXFp3Gcgl3jWM69twyL7rUfXu1niDya+xETnc9akDRQuLw+3hO2tR+8cdFw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bsK39iMV59F3hw1OTXKSA4rCpyAXPm0DLtjPZNDAA9A=; b=XHqIy2oa4ilxUILU1uRtgbRVmm
 t1hq86Ce+pD4xp6fBJ54pmkNC49sYCXcA2x6QFTwjlPgf/bgvPFHiP4iRRt+Xi3eIy5eBDtKjvuwc
 hRqCtDBIOOf/pQvzsbxqvm09szJCoTFApy+NzZCC0NdAHdy7jqrDPATnEXGGxIfVBofs=;
Received: from mail105.syd.optusnet.com.au ([211.29.132.249])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nujuS-005sGl-9g
 for jfs-discussion@lists.sourceforge.net; Sat, 28 May 2022 00:02:26 +0000
Received: from dread.disaster.area (pa49-181-2-147.pa.nsw.optusnet.com.au
 [49.181.2.147])
 by mail105.syd.optusnet.com.au (Postfix) with ESMTPS id 0817610E828D;
 Sat, 28 May 2022 10:02:17 +1000 (AEST)
Received: from dave by dread.disaster.area with local (Exim 4.92.3)
 (envelope-from <david@fromorbit.com>)
 id 1nujuK-00HDEL-5e; Sat, 28 May 2022 10:02:16 +1000
Date: Sat, 28 May 2022 10:02:16 +1000
From: Dave Chinner <david@fromorbit.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20220528000216.GG3923443@dread.disaster.area>
References: <20220526192910.357055-1-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220526192910.357055-1-willy@infradead.org>
X-Optus-CM-Score: 0
X-Optus-CM-Analysis: v=2.4 cv=deDjYVbe c=1 sm=1 tr=0 ts=6291668a
 a=ivVLWpVy4j68lT4lJFbQgw==:117 a=ivVLWpVy4j68lT4lJFbQgw==:17
 a=kj9zAlcOel0A:10 a=oZkIemNP1mAA:10 a=7-415B0cAAAA:8
 a=4mSRq-6Pa5T9pFwkqfQA:9 a=CjuIK1q_8ugA:10 a=biEYGPWJfzWAr4FL6Ov7:22
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, May 26, 2022 at 08:29:01PM +0100,
 Matthew Wilcox (Oracle)
 wrote: > This patchset does not work. It will eat your filesystem. Do not
 apply. > > The bug starts to show up with the fourth patch ( [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.29.132.249 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nujuS-005sGl-9g
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

On Thu, May 26, 2022 at 08:29:01PM +0100, Matthew Wilcox (Oracle) wrote:
> This patchset does not work.  It will eat your filesystem.  Do not apply.
> 
> The bug starts to show up with the fourth patch ("Convert direct_IO write
> support to use iomap").  generic/013 creates a corrupt filesystem and
> fsck fails to fix it, which shows all kinds of fun places in xfstests
> where we neglect to check that 'mount' actually mounted the filesystem.
> set -x or die.
> 
> I'm hoping one of the people who knows iomap better than I do can just
> point at the bug and say "Duh, it doesn't work like that".
> 
> It's safe to say that every patch after patch 6 is untested.  I'm not
> convinced that I really tested patch 6 either.

So the question I have to ask here is "why even bother?".

JFS is a legacy filesystem, and the risk of breaking stuff or
corrupting data and nobody noticing is really quite high.

We recently deprecated reiserfs and scheduled it's removal because
of the burden of keeping it up to date with VFS changes, what makes
JFS any different in this regard?

i.e. shouldn't this patchset be an indication that we should be
seriously considering deprecating and removing more legacy
filesystems rather than taking on the risk and burden associated
with updating them to modern internal kernel interfaces?

Cheers,

Dave.
-- 
Dave Chinner
david@fromorbit.com


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
