Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0542DED24
	for <lists+jfs-discussion@lfdr.de>; Sat, 19 Dec 2020 06:20:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kqUeV-0000lu-EY; Sat, 19 Dec 2020 05:19:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>)
 id 1kqUeU-0000lQ-1I; Sat, 19 Dec 2020 05:19:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TARKRSXf7326kO0qCmfUIKv486q/szb6N/69HhzDey0=; b=SYRTwmtQCqYeBwkR2/SQkjEgEn
 s3AI+JOyvPRItnPO9USXVjZBo5FH++QdPOzZO4xUxwH/qjFBKZf/e++jut4VOBw4APnaFqcNL8uVT
 5XoMWvs2x8AEvLDSaCSXtmwRbbmlyyseTbvXn2XG/dQo/egfNlj27JhQU2eDQqCgRXuQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TARKRSXf7326kO0qCmfUIKv486q/szb6N/69HhzDey0=; b=OnrCKh1ho8VtRwjxJ4/bnJKO1f
 /a+jUQEWEGli3Q1juVwEc7cbW+FBI/7Jtp6PMSWdX+FEARS0hmT46gU0gIvbejVZgmIublyS9xGyI
 qbci9N+u0jcH7+gg+3pL/3NWKro2vZ9eic8zp9s/q9jbxROIuZ2JgFzELa1PHbr3PaN4=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kqUeF-002Ip2-MI; Sat, 19 Dec 2020 05:19:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=TARKRSXf7326kO0qCmfUIKv486q/szb6N/69HhzDey0=; b=YbsRvyx1wjoh6xiZB57/1lgbpU
 iwesdLeyBD5NlC5Ebn55VCHGoE/DxpCuJ0L6/ymooF9ySssio42lEqyLae/84EJYfShO/3D5C/uov
 ZUhibatmwQKaa2bRcIjyC4cfUeF+ePFwjYluYrNBiAbRSPmyc1PlgFryWptalK9e7LVM7L7h//1jw
 LRzsD4I1TkBdfWOjJ0/pCYlaVE94YT3bf7xHQ0vtQ6YMmjXINBk/5nOf/7qc55Z1pxJ7Df7HwGbU8
 IqINRT8F3FkK2YAifRhYvOoBGGDS8CBO/j3uHzoYUy+kfPMv5Wlz5Ntalex0MHvDk+ISZ1tjIuHz4
 Pml8KPWA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kqUdo-0000CE-Sl; Sat, 19 Dec 2020 05:18:52 +0000
Date: Sat, 19 Dec 2020 05:18:52 +0000
From: Matthew Wilcox <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Message-ID: <20201219051852.GP15600@casper.infradead.org>
References: <20201218160531.GL15600@casper.infradead.org>
 <20201218220316.GO15600@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201218220316.GO15600@casper.infradead.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kqUeF-002Ip2-MI
Subject: Re: [Jfs-discussion] set_page_dirty vs truncate
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
Cc: Martin Brandenburg <martin@omnibond.com>, linux-cifs@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net, Miklos Szeredi <miklos@szeredi.hu>,
 Dave Kleikamp <shaggy@kernel.org>, Richard Weinberger <richard@nod.at>,
 Dominique Martinet <asmadeus@codewreck.org>, linux-um@lists.infradead.org,
 linux-nfs@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 Steve French <sfrench@samba.org>, linux-ntfs-dev@lists.sourceforge.net,
 Hans de Goede <hdegoede@redhat.com>, devel@lists.orangefs.org,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net, Jeff Dike <jdike@addtoit.com>,
 Anton Altaparmakov <anton@tuxera.com>, Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Dec 18, 2020 at 10:03:16PM +0000, Matthew Wilcox wrote:
> On Fri, Dec 18, 2020 at 04:05:31PM +0000, Matthew Wilcox wrote:
> > A number of implementations of ->set_page_dirty check whether the page
> > has been truncated (ie page->mapping has become NULL since entering
> > set_page_dirty()).  Several other implementations assume that they can do
> > page->mapping->host to get to the inode.  So either some implementations
> > are doing unnecessary checks or others are vulnerable to a NULL pointer
> > dereference if truncate() races with set_page_dirty().
> > 
> > I'm touching ->set_page_dirty() anyway as part of the page folio
> > conversion.  I'm thinking about passing in the mapping so there's no
> > need to look at page->mapping.
> > 
> > The comments on set_page_dirty() and set_page_dirty_lock() suggests
> > there's no consistency in whether truncation is blocked or not; we're
> > only guaranteed that the inode itself won't go away.  But maybe the
> > comments are stale.
> 
> The comments are, I believe, not stale.  Here's some syzbot
> reports which indicate that ext4 is seeing races between set_page_dirty()
> and truncate():
> 
>  https://groups.google.com/g/syzkaller-lts-bugs/c/s9fHu162zhQ/m/Phnf6ucaAwAJ
> 
> The reproducer includes calls to ftruncate(), so that would suggest
> that's what's going on.

Hmmm ... looks like __set_page_dirty_nobuffers() has a similar problem:

{
        lock_page_memcg(page);
        if (!TestSetPageDirty(page)) {
                struct address_space *mapping = page_mapping(page);
                unsigned long flags;

                if (!mapping) {
                        unlock_page_memcg(page);
                        return 1;
                }

                xa_lock_irqsave(&mapping->i_pages, flags);
                BUG_ON(page_mapping(page) != mapping);

sure, we check that the page wasn't truncated between set_page_dirty()
and the call to TestSetPageDirty(), but we can truncate dirty pages
with no problem.  So between the call to TestSetPageDirty() and
the call to xa_lock_irqsave(), the page can be truncated, and the
BUG_ON should fire.

I haven't been able to find any examples of this, but maybe it's just a very
narrow race.  Does anyone recognise this signature?  Adding the filesystems
which use __set_page_dirty_nobuffers() directly without extra locking.

$ git grep set_page_dirty.*=.*__set_page_dirty_nobuffers
fs/9p/vfs_addr.c:       .set_page_dirty = __set_page_dirty_nobuffers,
fs/cifs/file.c: .set_page_dirty = __set_page_dirty_nobuffers,
fs/cifs/file.c: .set_page_dirty = __set_page_dirty_nobuffers,
fs/fuse/file.c: .set_page_dirty = __set_page_dirty_nobuffers,
fs/hostfs/hostfs_kern.c:        .set_page_dirty = __set_page_dirty_nobuffers,
fs/jfs/jfs_metapage.c:  .set_page_dirty = __set_page_dirty_nobuffers,
fs/nfs/file.c:  .set_page_dirty = __set_page_dirty_nobuffers,
fs/ntfs/aops.c: .set_page_dirty = __set_page_dirty_nobuffers,   /* Set the page dirty
fs/orangefs/inode.c:    .set_page_dirty = __set_page_dirty_nobuffers,
fs/vboxsf/file.c:       .set_page_dirty = __set_page_dirty_nobuffers,



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
