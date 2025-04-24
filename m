Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2847DA99F7D
	for <lists+jfs-discussion@lfdr.de>; Thu, 24 Apr 2025 05:21:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7n8O-0008V1-UM;
	Thu, 24 Apr 2025 03:20:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1u7n8N-0008Uu-0F
 for jfs-discussion@lists.sourceforge.net;
 Thu, 24 Apr 2025 03:20:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u690wCMwhfUO4csc3E0cwZEDChOGhKpWac0W2zW2q+c=; b=RzZRq+J7ccpOy7uTy5BITb0h5Y
 1ho7hSqyyYJcueSncdo6Iyy2fwW6VteVN+zUz14PoN/yiR3gyWrQMOfKZ0Qe7CoNaah03+Uu035Rm
 ax9MiS+WnSMo1T14MAArkIZUWaijlnhAvxvlOlyBxyvJukoEypXzYG5OZ47cHeFZZerw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u690wCMwhfUO4csc3E0cwZEDChOGhKpWac0W2zW2q+c=; b=IRpDcLZi5z631kcHDTfUimEHwo
 LvXjN5xWtwtla/PZyabmmgHr5enjdWtM0LkofUZL9mqR13k85xt2uH4Fa5U7kXxZG1QmpmmQvPgG0
 AxI+bvV+EDGNPNvbZFPVjtgAqGTH5OwopCkai2X8ukTb2hq2KP3kWJO8yxkUNVqQ2Rik=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u7n86-0004dX-5m for jfs-discussion@lists.sourceforge.net;
 Thu, 24 Apr 2025 03:20:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=u690wCMwhfUO4csc3E0cwZEDChOGhKpWac0W2zW2q+c=; b=jJpTxu8/MrrakHRU+9VIbxsRg2
 8z/BSiRxH0TeO9l5Woe+kfKWjPs7Cs+LARNdx/i9Fpu/ue21iKHbdRFV6Cu/oIeMwkkNHY6BOXRZS
 VUhZx+pLs4S6SZ+iqH8XXE/S7AKi5ITNUckiz+xtx7fJnnK+/x8NCxb0GP4dgWQvdJCOJB3SoQBBE
 drXXwsyqTjbs+dXGewgHt5enxhqIRvI5LCVRXfJRRLlGA9fMU55qcTiuZdxaEKKaub/XibRiUj2yB
 plCLdkIyKckDyMrObj3yfK4Wp+6x2CoL1kKUiPxMFqQAbTzKmyY3OfgkV5RCyxaKUUMCbqbOj77kQ
 YoFTYWPQ==;
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1u7n7k-0000000ApCi-1vFI;
 Thu, 24 Apr 2025 03:19:40 +0000
Date: Thu, 24 Apr 2025 04:19:40 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Hildenbrand <david@redhat.com>
Message-ID: <aAmtzAv6ZbbRpKHM@casper.infradead.org>
References: <20250422114000.15003-1-shivankg@amd.com>
 <20250422114000.15003-2-shivankg@amd.com>
 <20250422164111.f5d3f0756ad94d012180ece5@linux-foundation.org>
 <aAg1-hZ0a-44WW6b@casper.infradead.org>
 <b84b6c31-578f-4abe-9b06-6e7cf4882eb3@redhat.com>
 <8f24de4d-5088-498a-968d-9e8bb85201ac@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8f24de4d-5088-498a-968d-9e8bb85201ac@redhat.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 23, 2025 at 09:25:05AM +0200, David Hildenbrand
 wrote: > On 23.04.25 09:22, David Hildenbrand wrote: > > On 23.04.25 02:36,
 Matthew Wilcox wrote: > > > On Tue, Apr 22, 2025 at 04:41:11PM - [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [90.155.50.34 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [90.155.50.34 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [90.155.50.34 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1u7n86-0004dX-5m
Subject: Re: [Jfs-discussion] [PATCH V4 1/2] mm: add
 folio_migration_expected_refs() as inline function
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
Cc: Shivank Garg <shivankg@amd.com>, shaggy@kernel.org,
 wangkefeng.wang@huawei.com,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com, jane.chu@oracle.com,
 apopple@nvidia.com, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, donettom@linux.ibm.com,
 ziy@nvidia.com, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Apr 23, 2025 at 09:25:05AM +0200, David Hildenbrand wrote:
> On 23.04.25 09:22, David Hildenbrand wrote:
> > On 23.04.25 02:36, Matthew Wilcox wrote:
> > > On Tue, Apr 22, 2025 at 04:41:11PM -0700, Andrew Morton wrote:
> > > > > +/**
> > > > > + * folio_migrate_expected_refs - Count expected references for an unmapped folio.
> > > > 
> > > > "folio_migration_expected_refs"
> > > 
> > > What I do wonder is whether we want to have such a specialised
> > > function existing.  We have can_split_folio() in huge_memory.c
> > > which is somewhat more comprehensive and doesn't require the folio to be
> > > unmapped first.
> > 
> > I was debating with myself whether we should do the usual "refs from
> > ->private, refs from page table mappings" .. dance, and look up the
> > mapping from the folio instead of passing it in.
> > 
> > I concluded that for this (migration) purpose the function is good
> > enough as it is: if abused in wrong context (e.g., still ->private,
> > still page table mappings), it would not fake that there are no
> > unexpected references.
> 
> Sorry, I forgot that we still care about the reference from ->private here.
> We expect the folio to be unmapped.

Right, so just adding in folio_mapcount() will be a no-op for migration,
but enable its reuse by can_split_folio().  Maybe.  Anyway, the way I
explain page refocunts to people (and I need to put this in a document
somewhere):

There are three types of contribution to the refcount:

 - Expected.  These are deducible from the folio itself, and they're all
   findable.  You need to figure out what the expected number of
   references are to a folio if you're going to try to freeze it.
   These can be references from the mapcount, the page cache, the swap
   cache, the private data, your call chain.
 - Temporary.  Someone else has found the folio somehow; perhaps through
   the page cache, or by calling GUP or something.  They mean you can't
   freeze the folio because you don't know who has the reference or how
   long they might hold it for.
 - Spurious.  This is like a temporary reference, but worse because if
   you read the code, there should be no way for there to be any temporary
   references to the folio.  Someone's found a stale pointer to this
   folio and has bumped the reference count while they check that the
   folio they have is the one they expected to find.  They're going
   to find out that the pointer they followed is stale and put their
   refcount soon, but in the meantime you still can't freeze the folio.

So I don't love the idea of having a function with the word "expected"
in the name that returns a value which doesn't take into account all
the potential contributors to the expected value.  And sure we can keep
adding qualifiers to the function name to indicate how it is to be used,
but at some point I think we should say "It's OK for this to be a little
less efficient so we can understand what it means".


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
