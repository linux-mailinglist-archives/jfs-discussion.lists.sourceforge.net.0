Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E1927476C
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Sep 2020 19:26:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kKm3Y-0006tY-OY; Tue, 22 Sep 2020 17:26:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cai@redhat.com>) id 1kKm3X-0006tR-6C
 for jfs-discussion@lists.sourceforge.net; Tue, 22 Sep 2020 17:26:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Mime-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KZmFKoK2MR7ChNH+SzztUzepcIAB3ilvtz5u7xppUU8=; b=ST27Pavr/Y0uZOQDjx7BCGnLQi
 6iTDZAHv6MBdJsLwOrOO+YYsH+IXU9/rCCeFjk0lxGCDDzRpK10Qcqkuf8+muNcRqiBL8ZTMonSYx
 GNUH4ZDYTrw//bjuMeKDa1qSpbq0ixcegCVJz6NqkC0YPpdNtMp1tr8D6dsB4s9ezzLw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Mime-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KZmFKoK2MR7ChNH+SzztUzepcIAB3ilvtz5u7xppUU8=; b=NZCVYlGHcxfBa4SoXj5qNAbLd7
 EVJWQRIJ1oEn5L9h0cggXicCnYqPn6rn/6JirBETHEvFTCm24mlY197LRuBXAEBClpwcAyP7EGWO0
 HtKV+0tNBmtnKhlsioPH0+5Svfxgf0NxbYHrHm8JQ0Wj9pn5nbQypW41f6nH93zrUVt0=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kKm3I-003S4Z-9G
 for jfs-discussion@lists.sourceforge.net; Tue, 22 Sep 2020 17:26:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600795551;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KZmFKoK2MR7ChNH+SzztUzepcIAB3ilvtz5u7xppUU8=;
 b=Sp3jWxDg6Vl2hLmdR95gTDlEFTdZNaWmkm+6JuYX/OCpyI3DenTMbNZpVHwknoPGd+MNCu
 o918R7igDv+cdl/i5x7jarPpj6d3wexaZOxV1uh0leBCt+CW1wBTLXFHLh5UPhtcjjRSgI
 vISv9zC5c0elfGHXSp21mRrdjXqoq2Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-463-mvCMT2fhNdqivAS76rFhIg-1; Tue, 22 Sep 2020 13:25:46 -0400
X-MC-Unique: mvCMT2fhNdqivAS76rFhIg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EBC1D80EF8B;
 Tue, 22 Sep 2020 17:25:44 +0000 (UTC)
Received: from ovpn-66-35.rdu2.redhat.com (unknown [10.10.67.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 606C310013D7;
 Tue, 22 Sep 2020 17:25:43 +0000 (UTC)
Message-ID: <c804f9ec9e15daa4e82483c546558599c662f53c.camel@redhat.com>
From: Qian Cai <cai@redhat.com>
To: Matthew Wilcox <willy@infradead.org>
Date: Tue, 22 Sep 2020 13:25:42 -0400
In-Reply-To: <20200922170526.GK32101@casper.infradead.org>
References: <20200910234707.5504-1-willy@infradead.org>
 <20200910234707.5504-6-willy@infradead.org>
 <163f852ba12fd9de5dec7c4a2d6b6c7cdb379ebc.camel@redhat.com>
 <20200922170526.GK32101@casper.infradead.org>
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gitlab.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kKm3I-003S4Z-9G
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
 linux-nvdimm@lists.01.org, Dave Kleikamp <shaggy@kernel.org>, "Darrick J .
 Wong" <darrick.wong@oracle.com>, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, linux-next@vger.kernel.org,
 Dave Chinner <dchinner@redhat.com>, linux-fsdevel@vger.kernel.org,
 Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, 2020-09-22 at 18:05 +0100, Matthew Wilcox wrote:
> On Tue, Sep 22, 2020 at 12:23:45PM -0400, Qian Cai wrote:
> > On Fri, 2020-09-11 at 00:47 +0100, Matthew Wilcox (Oracle) wrote:
> > > Size the uptodate array dynamically to support larger pages in the
> > > page cache.  With a 64kB page, we're only saving 8 bytes per page today,
> > > but with a 2MB maximum page size, we'd have to allocate more than 4kB
> > > per page.  Add a few debugging assertions.
> > > 
> > > Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> > > Reviewed-by: Dave Chinner <dchinner@redhat.com>
> > 
> > Some syscall fuzzing will trigger this on powerpc:
> > 
> > .config: https://gitlab.com/cailca/linux-mm/-/blob/master/powerpc.config
> > 
> > [ 8805.895344][T445431] WARNING: CPU: 61 PID: 445431 at fs/iomap/buffered-
> > io.c:78 iomap_page_release+0x250/0x270
> 
> Well, I'm glad it triggered.  That warning is:
>         WARN_ON_ONCE(bitmap_full(iop->uptodate, nr_blocks) !=
>                         PageUptodate(page));
> so there was definitely a problem of some kind.
> 
> truncate_cleanup_page() calls
> do_invalidatepage() calls
> iomap_invalidatepage() calls
> iomap_page_release()
> 
> Is this the first warning?  I'm wondering if maybe there was an I/O error
> earlier which caused PageUptodate to get cleared again.  If it's easy to
> reproduce, perhaps you could try something like this?

Yes, this is the first warning. BTW, I did run the reproducer of a805c111650c
("iomap: fix WARN_ON_ONCE() from unprivileged users") earlier, so I am wondering
if this is just another victim WARN_ON_ONCE() from it.

> 
> +void dump_iomap_page(struct page *page, const char *reason)
> +{
> +       struct iomap_page *iop = to_iomap_page(page);
> +       unsigned int nr_blocks = i_blocks_per_page(page->mapping->host, page);
> +
> +       dump_page(page, reason);
> +       if (iop)
> +               printk("iop:reads %d writes %d uptodate %*pb\n",
> +                               atomic_read(&iop->read_bytes_pending),
> +                               atomic_read(&iop->write_bytes_pending),
> +                               nr_blocks, iop->uptodate);
> +       else
> +               printk("iop:none\n");
> +}
> 
> and then do something like:
> 
> 	if (bitmap_full(iop->uptodate, nr_blocks) != PageUptodate(page))
> 		dump_iomap_page(page, NULL);
> 



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
