Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5B626E7D5
	for <lists+jfs-discussion@lfdr.de>; Fri, 18 Sep 2020 00:02:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kJ1zD-0000Ik-0L; Thu, 17 Sep 2020 22:02:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <darrick.wong@oracle.com>) id 1kJ1zB-0000IZ-GD
 for jfs-discussion@lists.sourceforge.net; Thu, 17 Sep 2020 22:02:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w/0iChru56jDdRDowf1LtC/uWbP73dxAi+aX4R1zuno=; b=eV3U+nB47OLSNShHMPx5omlg7z
 nweo7V2Wkk0rAT4yRPonC/2Zu9QDYwAZpBwV47ois7QE5hGnm4Hypz9dG64Pk/cr+qnEzSd/iT3bF
 D9RVi8151jY2Hc4+ptMickHISB60YP6NOS4MM/3yWKzPA1pTu8cUP0Xi2OazH2mBGV2Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w/0iChru56jDdRDowf1LtC/uWbP73dxAi+aX4R1zuno=; b=UlFFq8Y1q3PZ70rHnvtDl2R0rY
 Oy/eVRQmg4eeqxt4vTYmpycOyTBj4BS0IQcJlVK551vjIdlvmovgfVF2v+7TEJMFP+ZDKy4j5q18Y
 ZEtvuPHfhbr6J+F2myq/6fmfW8k3ipf8FJy2C+JT9kTn0gVFJr9CMbDNFOl/JoVhFTew=;
Received: from userp2120.oracle.com ([156.151.31.85])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJ1z6-00DVzr-Hy
 for jfs-discussion@lists.sourceforge.net; Thu, 17 Sep 2020 22:02:37 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08HM0QNJ036919;
 Thu, 17 Sep 2020 22:02:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=w/0iChru56jDdRDowf1LtC/uWbP73dxAi+aX4R1zuno=;
 b=HCzkggtHPgfYXJ4dM8vsrUvT5UrLYLLdngRccdIiMYsbyXxixHJTn+JBiwZpkW/qgzdx
 2asVdEChKRIWgrWeOqFeIIG0PZvGRKsHVHJUtvIGrqFJqngDw0BIzP/nUpOLfOH24acj
 ngfN5zLt+nZnfG0RZHSoP+G29Skp06pwuwXeZfPeFAXSgyGCfPwdo5Cyr2I2tQlXvLCt
 Q9uA9RTvAA6M+BhfrncO3r33ifDEDpnLg552xqiRi40O78r6t7dXn94oeMq+b7Gg0F5r
 ncj5Y53YnPu3ryGyt6/X+BQMRhywv8IsCNgg2DejO71VNvANXJMbR+rBuhLMTzNzoksE Kg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 33j91dwp03-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Sep 2020 22:02:13 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08HM06dY102117;
 Thu, 17 Sep 2020 22:02:13 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 33khpnqjum-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 17 Sep 2020 22:02:13 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08HM2CFQ030491;
 Thu, 17 Sep 2020 22:02:12 GMT
Received: from localhost (/67.169.218.210)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 17 Sep 2020 22:02:12 +0000
Date: Thu, 17 Sep 2020 15:02:10 -0700
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20200917220210.GO7955@magnolia>
References: <20200910234707.5504-1-willy@infradead.org>
 <20200910234707.5504-7-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200910234707.5504-7-willy@infradead.org>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9747
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=1
 mlxlogscore=999 phishscore=0 mlxscore=0 adultscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009170162
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9747
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 impostorscore=0
 priorityscore=1501 malwarescore=0 suspectscore=1 mlxlogscore=999
 clxscore=1015 adultscore=0 lowpriorityscore=0 spamscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009170162
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -3.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kJ1z6-00DVzr-Hy
Subject: Re: [Jfs-discussion] [PATCH v2 6/9] iomap: Convert read_count to
 read_bytes_pending
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-nvdimm@lists.01.org, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Sep 11, 2020 at 12:47:04AM +0100, Matthew Wilcox (Oracle) wrote:
> Instead of counting bio segments, count the number of bytes submitted.
> This insulates us from the block layer's definition of what a 'same page'
> is, which is not necessarily clear once THPs are involved.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  fs/iomap/buffered-io.c | 41 ++++++++++++-----------------------------
>  1 file changed, 12 insertions(+), 29 deletions(-)
> 
> diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
> index 9670c096b83e..1cf976a8e55c 100644
> --- a/fs/iomap/buffered-io.c
> +++ b/fs/iomap/buffered-io.c
> @@ -26,7 +26,7 @@
>   * to track sub-page uptodate status and I/O completions.
>   */
>  struct iomap_page {
> -	atomic_t		read_count;
> +	atomic_t		read_bytes_pending;
>  	atomic_t		write_count;
>  	spinlock_t		uptodate_lock;
>  	unsigned long		uptodate[];
> @@ -72,7 +72,7 @@ iomap_page_release(struct page *page)
>  
>  	if (!iop)
>  		return;
> -	WARN_ON_ONCE(atomic_read(&iop->read_count));
> +	WARN_ON_ONCE(atomic_read(&iop->read_bytes_pending));
>  	WARN_ON_ONCE(atomic_read(&iop->write_count));
>  	WARN_ON_ONCE(bitmap_full(iop->uptodate, nr_blocks) !=
>  			PageUptodate(page));
> @@ -167,13 +167,6 @@ iomap_set_range_uptodate(struct page *page, unsigned off, unsigned len)
>  		SetPageUptodate(page);
>  }
>  
> -static void
> -iomap_read_finish(struct iomap_page *iop, struct page *page)
> -{
> -	if (!iop || atomic_dec_and_test(&iop->read_count))
> -		unlock_page(page);
> -}
> -
>  static void
>  iomap_read_page_end_io(struct bio_vec *bvec, int error)
>  {
> @@ -187,7 +180,8 @@ iomap_read_page_end_io(struct bio_vec *bvec, int error)
>  		iomap_set_range_uptodate(page, bvec->bv_offset, bvec->bv_len);
>  	}
>  
> -	iomap_read_finish(iop, page);
> +	if (!iop || atomic_sub_and_test(bvec->bv_len, &iop->read_bytes_pending))
> +		unlock_page(page);
>  }
>  
>  static void
> @@ -267,30 +261,19 @@ iomap_readpage_actor(struct inode *inode, loff_t pos, loff_t length, void *data,
>  	}
>  
>  	ctx->cur_page_in_bio = true;
> +	if (iop)
> +		atomic_add(plen, &iop->read_bytes_pending);
>  
> -	/*
> -	 * Try to merge into a previous segment if we can.
> -	 */
> +	/* Try to merge into a previous segment if we can */
>  	sector = iomap_sector(iomap, pos);
> -	if (ctx->bio && bio_end_sector(ctx->bio) == sector)
> +	if (ctx->bio && bio_end_sector(ctx->bio) == sector) {
> +		if (__bio_try_merge_page(ctx->bio, page, plen, poff,
> +				&same_page))
> +			goto done;
>  		is_contig = true;
> -
> -	if (is_contig &&
> -	    __bio_try_merge_page(ctx->bio, page, plen, poff, &same_page)) {
> -		if (!same_page && iop)
> -			atomic_inc(&iop->read_count);
> -		goto done;
>  	}
>  
> -	/*
> -	 * If we start a new segment we need to increase the read count, and we
> -	 * need to do so before submitting any previous full bio to make sure
> -	 * that we don't prematurely unlock the page.
> -	 */
> -	if (iop)
> -		atomic_inc(&iop->read_count);
> -
> -	if (!ctx->bio || !is_contig || bio_full(ctx->bio, plen)) {
> +	if (!is_contig || bio_full(ctx->bio, plen)) {
>  		gfp_t gfp = mapping_gfp_constraint(page->mapping, GFP_KERNEL);
>  		gfp_t orig_gfp = gfp;
>  		int nr_vecs = (length + PAGE_SIZE - 1) >> PAGE_SHIFT;
> -- 
> 2.28.0
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
