Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A577C7166C2
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:14:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q412p-0004pB-9o;
	Tue, 30 May 2023 15:13:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpatocka@redhat.com>) id 1q412n-0004oz-Pq
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:13:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vye8gB1vOKUzz58ckJ8yXN12XsS7VmnNhEIxChnaCeU=; b=kfYtAWtbnJ2Pe+rvffvYS82GcQ
 5sPDVrI5FhMxZavqCQKtGDl2V1y4nPqNoTSP7vVzdzxr0YXCkvg+c8mVPmdDGf2gHMYoc37qv9YbY
 3htZQoCDSeVlyVS+UWV2hjjyuDbDiH4lXDWDRxOMIYIGN/vs5xCbrB1B3TKTEDxCmqPY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vye8gB1vOKUzz58ckJ8yXN12XsS7VmnNhEIxChnaCeU=; b=LRRGTpDHe8hvSrzdy+kjVBl0AQ
 vycDxd6w9OkQX+jtsK6HUoCCoGd+vyzKGpfYRykDoQzMi6mciOZAIQ+3rE+hM9Jt5v7mC+jSAuZrP
 N/NjgfGEHBYPGT3j97vqRnTbyQhW1wNWFm14O7nmWO1hyg+vrLIeD+yRRfIBOUp2gY6s=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q412k-0002sZ-8U for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:13:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1685459623;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vye8gB1vOKUzz58ckJ8yXN12XsS7VmnNhEIxChnaCeU=;
 b=T9CfoKcEBX6MKqoIeb2yElskcKj6hij9BDKfN94tvfvZGv00tndDmFh/3BCoikCyXutUPP
 DtSFyNdc7axQJThNW5cCPaZs5/6qQS76hIAoT2nrUFrvuCbvgrV1xEsHJ8B+Y7c2oLD7/e
 p3R5ftjiTooWqBCuLGNBN8fymSI3I6U=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-5-hmEFKwvqOZWLGW87qowi1w-1; Tue, 30 May 2023 11:13:40 -0400
X-MC-Unique: hmEFKwvqOZWLGW87qowi1w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BB27785A5BA;
 Tue, 30 May 2023 15:13:39 +0000 (UTC)
Received: from file01.intranet.prod.int.rdu2.redhat.com
 (file01.intranet.prod.int.rdu2.redhat.com [10.11.5.7])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A93F140EBB8;
 Tue, 30 May 2023 15:13:39 +0000 (UTC)
Received: from file01.intranet.prod.int.rdu2.redhat.com (localhost [127.0.0.1])
 by file01.intranet.prod.int.rdu2.redhat.com (8.14.4/8.14.4) with ESMTP id
 34UFDdMG006630; Tue, 30 May 2023 11:13:39 -0400
Received: from localhost (mpatocka@localhost)
 by file01.intranet.prod.int.rdu2.redhat.com (8.14.4/8.14.4/Submit) with ESMTP
 id 34UFDc58006626; Tue, 30 May 2023 11:13:38 -0400
X-Authentication-Warning: file01.intranet.prod.int.rdu2.redhat.com: mpatocka
 owned process doing -bs
Date: Tue, 30 May 2023 11:13:38 -0400 (EDT)
From: Mikulas Patocka <mpatocka@redhat.com>
X-X-Sender: mpatocka@file01.intranet.prod.int.rdu2.redhat.com
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
In-Reply-To: <20230502101934.24901-17-johannes.thumshirn@wdc.com>
Message-ID: <alpine.LRH.2.21.2305301045220.3943@file01.intranet.prod.int.rdu2.redhat.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
 <20230502101934.24901-17-johannes.thumshirn@wdc.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2 May 2023,
 Johannes Thumshirn wrote: > Check if adding
 pages to clone bio fails and if it does retry with > reclaim. This mirrors
 the behaviour of page allocation in > crypt_alloc_buffer(). > > This way
 we can mark bio_add_pages as __mus [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1q412k-0002sZ-8U
Subject: Re: [Jfs-discussion] [dm-devel] [PATCH v5 16/20] dm-crypt: check if
 adding pages to clone bio fails
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
Cc: "axboe @ kernel . dk" <axboe@kernel.dk>, shaggy@kernel.org,
 damien.lemoal@wdc.com, cluster-devel@redhat.com, kch@nvidia.com,
 agruenba@redhat.com, linux-mm@kvack.org,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 linux-block@vger.kernel.org, song@kernel.org, dm-devel@redhat.com,
 rpeterso@redhat.com, linux-fsdevel@vger.kernel.org, linux-raid@vger.kernel.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net



On Tue, 2 May 2023, Johannes Thumshirn wrote:

> Check if adding pages to clone bio fails and if it does retry with
> reclaim. This mirrors the behaviour of page allocation in
> crypt_alloc_buffer().
> 
> This way we can mark bio_add_pages as __must_check.
> 
> Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
> ---
>  drivers/md/dm-crypt.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/md/dm-crypt.c b/drivers/md/dm-crypt.c
> index 8b47b913ee83..b234dc089cee 100644
> --- a/drivers/md/dm-crypt.c
> +++ b/drivers/md/dm-crypt.c
> @@ -1693,7 +1693,14 @@ static struct bio *crypt_alloc_buffer(struct dm_crypt_io *io, unsigned int size)
>  
>  		len = (remaining_size > PAGE_SIZE) ? PAGE_SIZE : remaining_size;
>  
> -		bio_add_page(clone, page, len, 0);
> +		if (!bio_add_page(clone, page, len, 0)) {
> +			mempool_free(page, &cc->page_pool);
> +			crypt_free_buffer_pages(cc, clone);
> +			bio_put(clone);
> +			gfp_mask |= __GFP_DIRECT_RECLAIM;
> +			goto retry;
> +
> +		}
>  
>  		remaining_size -= len;
>  	}

Hi

I nack this. This just adds code that can't ever be executed.

dm-crypt already allocates enough entries in the vector (see "unsigned int 
nr_iovecs = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;"), so bio_add_page can't 
fail.

If you want to add __must_check to bio_add_page, you should change the 
dm-crypt code to:
if (!bio_add_page(clone, page, len, 0)) {
	WARN(1, "this can't happen");
	return NULL;
}
and not write recovery code for a can't-happen case.

Mikulas



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
