Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AADBD1E9C
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 10:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yioccDGqLVMhkTkytuMNC8id+zZh+3iWsgGSuGAzQa8=; b=O4T45Bjw22mQtbdpHdJF3l/cgL
	ROq7j7PxxPwTxMMEzN0RxJNNncuPfusbJbvh6dJ0W+H9swumvfrQunl+HMfs+K8+cLNq0TXwa2Pc2
	Q7o9/CR9H2c26eiBHWwQQqTgwkmUUQ7KsRSIWXmV2XlIgH9PaVhzmxIwrtOFMrLP19aw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8DWO-0004kE-Q0;
	Mon, 13 Oct 2025 08:03:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dlemoal@kernel.org>) id 1v8DWM-0004k8-Tv
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:03:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aJ3AGYAZpwp+EfAJMfA5wPfaTGW+vNoP7zI3wmy2x28=; b=cKF7RKyhqPYxkFqpHvv2Yr5Afx
 iGeKcqum0HTQG7gZ1cnR8xQDcIRhnd3K2VIJqGNTF/tgfrvl1p+hsZEhAMIj62R6K7mhyrIXzzQSt
 E6/m0bEZe0bdulxwhbEaaIAHB339TIOg0+Ntry0NWNi/cgSwXkyemY4ZEdacA0X8NrBA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aJ3AGYAZpwp+EfAJMfA5wPfaTGW+vNoP7zI3wmy2x28=; b=dlM8jRrAlc5t+2T6aiqtabdPdr
 8nDK91rpAfCL50GHJ5WF0BmDTYKAtpokvLou2uxNA5VeiEzj0ogdpLrhvrxg0RxsSkGr4M+wY6Q+h
 Eh6gi+3YndPN43/0RSKWNRrUybUWMVUrevUed7t4gdYUTynfj1FY5EP9ZxNaGScFW/xY=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8DWM-0004Z9-Bt for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:03:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 99FEB61109;
 Mon, 13 Oct 2025 08:02:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA8AAC4CEE7;
 Mon, 13 Oct 2025 08:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760342575;
 bh=JmTNokf/Y0BVZcHoL0mzR2f+X5eoue5G/y7OJfo9XEY=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=uEaoIvCz69w/jGeDcmPCeRev/Gwhggq2w1BemWI2FV+vIIHgCZfedXZbDbxig3nz5
 YEEvDrPMNVBhGkDcdL4D7+afM7BS+U46TjfzCfmMUbUq8wdnxVxu/rWwNSUsmNBrC0
 7q4NDle476VCpxVswTJQZFdwb4gtB8qjIWs0OWDqhvqSyu+sejmM4W+nqXYX6OWB+w
 3YX9DQddSWJp1CG+4QkrvP2HQBNffvVwG/IsXhshs81RHld94oUMNzNcn1Jpka4F1G
 jioX/6pXoqtfgFVvtKO1hNkmKs4EOzqrcSvW3e8KZS4/9HC3na9qgqxYjI90ASKhh5
 o2Hqr/Il6R4Mw==
Message-ID: <4e508d42-9cd4-481a-904f-535b1de0b765@kernel.org>
Date: Mon, 13 Oct 2025 17:02:50 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>, Latchesar Ionkov
 <lucho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-8-hch@lst.de>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20251013025808.4111128-8-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/10/13 11:58, Christoph Hellwig wrote: > And rewrite
 filemap_fdatawrite to use filemap_fdatawrite_range instead > to have a simpler
 call chain. > > Signed-off-by: Christoph Hellwig <hch@lst.de> [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1v8DWM-0004Z9-Bt
Subject: Re: [Jfs-discussion] [PATCH 07/10] mm: remove __filemap_fdatawrite
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
From: Damien Le Moal via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Damien Le Moal <dlemoal@kernel.org>
Cc: linux-xfs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 Jan Kara <jack@suse.cz>, linux-mm@kvack.org, v9fs@lists.linux.dev,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Alexander Viro <viro@zeniv.linux.org.uk>,
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2025/10/13 11:58, Christoph Hellwig wrote:
> And rewrite filemap_fdatawrite to use filemap_fdatawrite_range instead
> to have a simpler call chain.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  mm/filemap.c | 18 ++++++------------
>  1 file changed, 6 insertions(+), 12 deletions(-)
> 
> diff --git a/mm/filemap.c b/mm/filemap.c
> index b95e71774131..bbd5d5eaa661 100644
> --- a/mm/filemap.c
> +++ b/mm/filemap.c
> @@ -422,25 +422,19 @@ int __filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
>  	return filemap_fdatawrite_wbc(mapping, &wbc);
>  }
>  
> -static inline int __filemap_fdatawrite(struct address_space *mapping,
> -	int sync_mode)
> +int filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
> +		loff_t end)
>  {
> -	return __filemap_fdatawrite_range(mapping, 0, LLONG_MAX, sync_mode);
> +	return __filemap_fdatawrite_range(mapping, start, end, WB_SYNC_ALL);
>  }
> +EXPORT_SYMBOL(filemap_fdatawrite_range);
>  
>  int filemap_fdatawrite(struct address_space *mapping)
>  {
> -	return __filemap_fdatawrite(mapping, WB_SYNC_ALL);
> +	return filemap_fdatawrite_range(mapping, 0, LONG_MAX);

This should be LLONG_MAX, no ?

>  }
>  EXPORT_SYMBOL(filemap_fdatawrite);
>  
> -int filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
> -				loff_t end)
> -{
> -	return __filemap_fdatawrite_range(mapping, start, end, WB_SYNC_ALL);
> -}
> -EXPORT_SYMBOL(filemap_fdatawrite_range);
> -
>  /**
>   * filemap_fdatawrite_range_kick - start writeback on a range
>   * @mapping:	target address_space
> @@ -470,7 +464,7 @@ EXPORT_SYMBOL_GPL(filemap_fdatawrite_range_kick);
>   */
>  int filemap_flush(struct address_space *mapping)
>  {
> -	return __filemap_fdatawrite(mapping, WB_SYNC_NONE);
> +	return filemap_fdatawrite_range_kick(mapping, 0, LLONG_MAX);
>  }
>  EXPORT_SYMBOL(filemap_flush);
>  


-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
