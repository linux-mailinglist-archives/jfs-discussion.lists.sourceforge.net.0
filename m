Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC57274739
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Sep 2020 19:06:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kKljl-0005zx-Kn; Tue, 22 Sep 2020 17:05:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kKljk-0005zq-LE
 for jfs-discussion@lists.sourceforge.net; Tue, 22 Sep 2020 17:05:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ofr4ycOkQnFAciMKQaMH/OLH5o4G6m4xVeFOeH1Pf8k=; b=FT/AnlXtZ3OBSAyT84ZcwMWooO
 LBcKbLSFf104StIMpv5Ys/Hp8kYjlEGDfgGwMEMnxGM0pyxMFXBKm9pn+afEB4g6NiqOrVyvTBsS+
 o2p0XCyd0XRK5pQI8eu/9hToYyrH0Tsozzbv8JbmCK45m1aBNsTItU5X3ZrX5BPR3vbo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ofr4ycOkQnFAciMKQaMH/OLH5o4G6m4xVeFOeH1Pf8k=; b=fcumsA9/JhKWPZYHQxySQ78TKM
 xY68qgXzqf0NG92DHUTpTWt63y9PAIoWG8TWNPT74oHeAEqiqoljcv0SyeR2owSY3Wt2+ZcK7Jcyd
 5au6Qg3SuqKgcGis560RNxye9E4+NOYvetiiLT0UV5Pwms9T6U/3/Dvx6hMKwqSMfku0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kKlje-003QsT-0n
 for jfs-discussion@lists.sourceforge.net; Tue, 22 Sep 2020 17:05:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ofr4ycOkQnFAciMKQaMH/OLH5o4G6m4xVeFOeH1Pf8k=; b=XEoWL0EtfRYmAwbOKKCLbqyj3d
 aad4hP2RYYM35/Qd3cvIrLQjfc4bFUJ40ZYOCm36Y6MPZbQlM10p98SR2XAm0SC2oy65LLGSRgOhs
 e/iB335z/XX20W6Ju5qOm0WNQ3qRY9ba6/lrjphBDsd9+xJpkXgTGygfFM6l3AStrXFnQh5EMLRvC
 U4m+HyXSumF8/K5QlgI080CHAa4pBfYrvU4WWR+yEAtWyqDmzOOmlCVIGgwrVyXyFgyXcU9Ca2uOA
 i7lBTg4mLyjU2cA7xKE+3bIQCBBXhOUzFNTozSiySeeCZJTTdIakYj0tCW9GKj0ZXSo9CFg+/WNZN
 vR6PNQDA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kKljK-0002Na-Gp; Tue, 22 Sep 2020 17:05:26 +0000
Date: Tue, 22 Sep 2020 18:05:26 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Qian Cai <cai@redhat.com>
Message-ID: <20200922170526.GK32101@casper.infradead.org>
References: <20200910234707.5504-1-willy@infradead.org>
 <20200910234707.5504-6-willy@infradead.org>
 <163f852ba12fd9de5dec7c4a2d6b6c7cdb379ebc.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <163f852ba12fd9de5dec7c4a2d6b6c7cdb379ebc.camel@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kKlje-003QsT-0n
Subject: Re: [Jfs-discussion] [PATCH v2 5/9] iomap: Support arbitrarily many
 blocks per page
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
Cc: Christoph Hellwig <hch@infradead.org>, jfs-discussion@lists.sourceforge.net,
 linux-nvdimm@lists.01.org, Dave Kleikamp <shaggy@kernel.org>,
 "Darrick J . Wong" <darrick.wong@oracle.com>, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, linux-next@vger.kernel.org,
 Dave Chinner <dchinner@redhat.com>, linux-fsdevel@vger.kernel.org,
 Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Sep 22, 2020 at 12:23:45PM -0400, Qian Cai wrote:
> On Fri, 2020-09-11 at 00:47 +0100, Matthew Wilcox (Oracle) wrote:
> > Size the uptodate array dynamically to support larger pages in the
> > page cache.  With a 64kB page, we're only saving 8 bytes per page today,
> > but with a 2MB maximum page size, we'd have to allocate more than 4kB
> > per page.  Add a few debugging assertions.
> > 
> > Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> > Reviewed-by: Dave Chinner <dchinner@redhat.com>
> 
> Some syscall fuzzing will trigger this on powerpc:
> 
> .config: https://gitlab.com/cailca/linux-mm/-/blob/master/powerpc.config
> 
> [ 8805.895344][T445431] WARNING: CPU: 61 PID: 445431 at fs/iomap/buffered-io.c:78 iomap_page_release+0x250/0x270

Well, I'm glad it triggered.  That warning is:
        WARN_ON_ONCE(bitmap_full(iop->uptodate, nr_blocks) !=
                        PageUptodate(page));
so there was definitely a problem of some kind.

truncate_cleanup_page() calls
do_invalidatepage() calls
iomap_invalidatepage() calls
iomap_page_release()

Is this the first warning?  I'm wondering if maybe there was an I/O error
earlier which caused PageUptodate to get cleared again.  If it's easy to
reproduce, perhaps you could try something like this?

+void dump_iomap_page(struct page *page, const char *reason)
+{
+       struct iomap_page *iop = to_iomap_page(page);
+       unsigned int nr_blocks = i_blocks_per_page(page->mapping->host, page);
+
+       dump_page(page, reason);
+       if (iop)
+               printk("iop:reads %d writes %d uptodate %*pb\n",
+                               atomic_read(&iop->read_bytes_pending),
+                               atomic_read(&iop->write_bytes_pending),
+                               nr_blocks, iop->uptodate);
+       else
+               printk("iop:none\n");
+}

and then do something like:

	if (bitmap_full(iop->uptodate, nr_blocks) != PageUptodate(page))
		dump_iomap_page(page, NULL);



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
