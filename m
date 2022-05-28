Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93571536E1E
	for <lists+jfs-discussion@lfdr.de>; Sat, 28 May 2022 21:00:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nv1fZ-0003OX-BG; Sat, 28 May 2022 19:00:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tytso@mit.edu>) id 1nv1fW-0003ON-PC
 for jfs-discussion@lists.sourceforge.net; Sat, 28 May 2022 19:00:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WG/9y43YVTYUGGdg0XiluI1UzSrpDLWQtVRIcUa+30k=; b=hB1OzksO1vMJIRxsJYRWlIjCYa
 DeTgEzf+/2aIkGc0M4t8KPNiZB0JlZsZz2/dSe5hkMRgH0ZbWPASzW4FZGlzU7cpTCWeRQp5IMMOp
 IlR4+NNztxVZIGqK93dDP8P0vfmOFKvVBfBUzvfTtTn7iGhr6+2XVzoXCRiNNDoaiVmA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WG/9y43YVTYUGGdg0XiluI1UzSrpDLWQtVRIcUa+30k=; b=ICPEK/r/eocTb7BPn+fKmtLAKm
 7CQHXpOtrWwN1fMiGtuaVUjqjcMNKdOppvsadJ5XMoAAtkuS6Q3Zfl/WLZZzlvZpeObxHe9/WsQvo
 sK6ij9/8vmfJROP3Cljm8V6vvrwwCNKlwtpVoeNc3Pq2iGY3T8gWJLyGTDOavb87Iaag=;
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nv1fP-00AKpR-8b
 for jfs-discussion@lists.sourceforge.net; Sat, 28 May 2022 19:00:11 +0000
Received: from cwcc.thunk.org (pool-108-7-220-252.bstnma.fios.verizon.net
 [108.7.220.252]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 24SIxVPw001934
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 28 May 2022 14:59:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
 t=1653764373; bh=WG/9y43YVTYUGGdg0XiluI1UzSrpDLWQtVRIcUa+30k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=NdEO1lcgtnv0yvpDMOSyvaWt5+liMNaVkEKCRAgoYm5+M7ALjaVQ05p0jWq4/PcpS
 cXry5ARpiDQ4wsAeAru3iiqOxOQh2KzLDsWtb5qSJZHLnJG3JQyG1DqfGwhztEXxCs
 z7M7huHxqFFWJqipqjLfHjKEr0VggBrMRx1tB4ABXt+ZoU1L+WVv/NDXJ6+eB7u8QZ
 J76f94DQoXK44mrZVuU/i+FKzEt4QzP/vN8BI9g1BueINpDStvrGPQxNg61iK9ZiUb
 w6+aOcemwdVjjPJYOVje8esW/wLnGGwtYBGmTm/Lzqo7Iu6tA55BSgFM2RWYs0Fm4m
 1FcFjvOqqanUQ==
Received: by cwcc.thunk.org (Postfix, from userid 15806)
 id 783FB15C009C; Sat, 28 May 2022 14:59:31 -0400 (EDT)
Date: Sat, 28 May 2022 14:59:31 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Dave Chinner <david@fromorbit.com>
Message-ID: <YpJxEwl+t93pSKLk@mit.edu>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220528000216.GG3923443@dread.disaster.area>
 <YpGF3ceSLt7J/UKn@casper.infradead.org>
 <20220528053639.GI3923443@dread.disaster.area>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220528053639.GI3923443@dread.disaster.area>
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  +linux-ext4 On Sat, May 28, 2022 at 03:36:39PM +1000, Dave
 Chinner wrote: > The other filesystem that uses nobh is the standalone ext2
 > filesystem that nobody uses anymore as the ext4 module provides ext2 >
 func [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1nv1fP-00AKpR-8b
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

+linux-ext4

On Sat, May 28, 2022 at 03:36:39PM +1000, Dave Chinner wrote:
> The other filesystem that uses nobh is the standalone ext2
> filesystem that nobody uses anymore as the ext4 module provides ext2
> functionality for distros these days. Hence there's an argument that
> can be made for removing fs/ext2 as well. In which case, the whole
> nobh problem goes away by deprecating and removing both the
> filesysetms that use that infrastructure in 2 years time....

This got brought up at this past week's ext4 video chat, where Willy
asked Jan (who has been maintaining ext2) whether he would be open to
converting ext2 to use iomap.  The answer was yes.  So once jfs and
ext2 are converted, we'll be able to nuke the nobh code.

From Willy's comments on the video chat, my understanding is that jfs
was even simpler to convert that ext2, and this allows us to remove
the nobh infrastructure without asking the question about whether it's
time to remove jfs.

> > We also need to convert more filesystems to use iomap.
> 
> We also need to deprecate and remove more largely unmaintained and
> unused filesystems. :)

Well, Dave Kleikamp is still around and sends jfs pull requests from
time to time, and so it's not as unmaintained as, say, fs/adfs,
fs/freevxs, fs/hpfs, fs/minix, and fs/sysv.

As regards to minixfs, I'd argue that ext2 is a better reference file
system than minixfs.  So..... are we ready to remove minixfs?  I could
easily see that some folks might still have sentimental attachment to
minixfs.  :-)

> Until ext4 is converted to use iomap, we realistically cannot ask
> anyone to use iomap....

That's something that we've been discussing on the ext4 video chats.
What we can probably do is to convert buffered I/O to use iomap in
stages, first starting with the easy case, and then progressing to the
more complex ones:

     * page_size == block_size, !fscrypt, !fsverity, !data=journal
     * page_size != block_size, !fscrypt, !fsverity, !data=journal
     * fsverity
     * fscrypt

At that point, the hard, remaining case is what to do with
data=journal.  data=journal is already barely maintained; we don't
support direct i/o, delayed allocation, etc., There have been some
specialized users for it, but it's probably more for interesting
research applications than anything else.

So the question is whether we keep it as a special case, and never
convert it over to iomap, or decide that it's time to deprecate and
rip out data=journal support.  We don't need to make that decision
right away, and so long as it remains a special case where it doesn't
burden the rest of the kernel, we might end up keeping it so long as
it remains a minimal maintenance burden for ext4.  I duuno....

In any case, rest assured that there have been quite a lot of
discussions about how to convert all (or 99.99%) of ext4 to use iomap.

Cheers,

						- Ted


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
