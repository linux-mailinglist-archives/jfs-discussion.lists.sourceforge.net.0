Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B8F26E7EF
	for <lists+jfs-discussion@lfdr.de>; Fri, 18 Sep 2020 00:05:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kJ21u-0000bZ-QJ; Thu, 17 Sep 2020 22:05:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <darrick.wong@oracle.com>) id 1kJ21t-0000bS-Pk
 for jfs-discussion@lists.sourceforge.net; Thu, 17 Sep 2020 22:05:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MQv30HbtHRoUo5Q1tF7Om4fCuOCoNR96uQA4Vl3kIEs=; b=eEGt7Dyq5q2fD1ED1o629FEmBO
 O4NZUSI1WyVLMSNVbCAKOqcl28D1uQHnhA7IGsvFRK96hPoNppNBckDojLxJkayAX6lGTMC5OYsiR
 eTDXNNEusG11Vqd50xD/s2Z/CCJcxBJI8SE7iE8aPNUQBUVgrDZvpkBQbEUXqP4kpBy4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MQv30HbtHRoUo5Q1tF7Om4fCuOCoNR96uQA4Vl3kIEs=; b=WLY5nDM1EZqZqL2J8OFO9BGjLO
 8c6gr/MbfCMs5vh1ZdV7jRmSYT5kNrIgnPhK5xZsPuWCUdKAwwilo5eCrCOUI9LlvmbuYZo3Zlqgg
 tYRPY0EGgwts0v9cnYpWTYbEV8X9oPGi5203FBRFpONGZaxLSzrJWQkMNym+5HMR4ieI=;
Received: from userp2130.oracle.com ([156.151.31.86])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJ21n-00Ekay-UD
 for jfs-discussion@lists.sourceforge.net; Thu, 17 Sep 2020 22:05:25 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08HM02qQ048403;
 Thu, 17 Sep 2020 22:05:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=MQv30HbtHRoUo5Q1tF7Om4fCuOCoNR96uQA4Vl3kIEs=;
 b=jXxxNNQdF84xitF5IAAaff7tl8Q40qfg//sriYTLwDzDGxthR/+YelqxBJnZrGVeU/Zn
 Om0jyue2L01BqlsxYYFD2syey1OAapO1ZXgM3j+huQVcys1AQXtdda4SM3Uo4YR7YlGX
 a+ORVOh2SHTfE5yv15G76kTQuj8rhiEsgdtuUcstC6k5BlL11Mj+weOGAZUZlW5ZVBpK
 4StrX/TOYdNxop4Sb8rBcK+wlh6hf4ez5TzT4UE6hrpjLkOwzyFLN0ay3bZ/3kAFFz0R
 lhIB314YNOTfxr6qLPN0XjLb0TA8GhUQar0uHCJPzVfRrtN40A7g03qrmFlAQ5Yl7o28 kQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 33gnrrc2ve-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Sep 2020 22:05:03 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08HM0nio174108;
 Thu, 17 Sep 2020 22:05:03 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 33mega5dks-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 17 Sep 2020 22:05:03 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08HM51Nl000538;
 Thu, 17 Sep 2020 22:05:01 GMT
Received: from localhost (/67.169.218.210)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 17 Sep 2020 22:05:01 +0000
Date: Thu, 17 Sep 2020 15:05:00 -0700
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20200917220500.GR7955@magnolia>
References: <20200910234707.5504-1-willy@infradead.org>
 <20200910234707.5504-10-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200910234707.5504-10-willy@infradead.org>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9747
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 mlxscore=0 spamscore=0
 mlxlogscore=999 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009170162
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9747
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0
 lowpriorityscore=0 malwarescore=0 mlxscore=0 bulkscore=0 suspectscore=1
 clxscore=1015 mlxlogscore=999 adultscore=0 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009170162
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -3.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kJ21n-00Ekay-UD
Subject: Re: [Jfs-discussion] [PATCH v2 9/9] iomap: Change calling
 convention for zeroing
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

On Fri, Sep 11, 2020 at 12:47:07AM +0100, Matthew Wilcox (Oracle) wrote:
> Pass the full length to iomap_zero() and dax_iomap_zero(), and have
> them return how many bytes they actually handled.  This is preparatory
> work for handling THP, although it looks like DAX could actually take
> advantage of it if there's a larger contiguous area.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  fs/dax.c               | 13 ++++++-------
>  fs/iomap/buffered-io.c | 33 +++++++++++++++------------------
>  include/linux/dax.h    |  3 +--
>  3 files changed, 22 insertions(+), 27 deletions(-)
> 
> diff --git a/fs/dax.c b/fs/dax.c
> index 994ab66a9907..6ad346352a8c 100644
> --- a/fs/dax.c
> +++ b/fs/dax.c
> @@ -1037,18 +1037,18 @@ static vm_fault_t dax_load_hole(struct xa_state *xas,
>  	return ret;
>  }
>  
> -int dax_iomap_zero(loff_t pos, unsigned offset, unsigned size,
> -		   struct iomap *iomap)
> +s64 dax_iomap_zero(loff_t pos, u64 length, struct iomap *iomap)
>  {
>  	sector_t sector = iomap_sector(iomap, pos & PAGE_MASK);
>  	pgoff_t pgoff;
>  	long rc, id;
>  	void *kaddr;
>  	bool page_aligned = false;
> -
> +	unsigned offset = offset_in_page(pos);
> +	unsigned size = min_t(u64, PAGE_SIZE - offset, length);
>  
>  	if (IS_ALIGNED(sector << SECTOR_SHIFT, PAGE_SIZE) &&
> -	    IS_ALIGNED(size, PAGE_SIZE))
> +	    (size == PAGE_SIZE))
>  		page_aligned = true;
>  
>  	rc = bdev_dax_pgoff(iomap->bdev, sector, PAGE_SIZE, &pgoff);
> @@ -1058,8 +1058,7 @@ int dax_iomap_zero(loff_t pos, unsigned offset, unsigned size,
>  	id = dax_read_lock();
>  
>  	if (page_aligned)
> -		rc = dax_zero_page_range(iomap->dax_dev, pgoff,
> -					 size >> PAGE_SHIFT);
> +		rc = dax_zero_page_range(iomap->dax_dev, pgoff, 1);
>  	else
>  		rc = dax_direct_access(iomap->dax_dev, pgoff, 1, &kaddr, NULL);
>  	if (rc < 0) {
> @@ -1072,7 +1071,7 @@ int dax_iomap_zero(loff_t pos, unsigned offset, unsigned size,
>  		dax_flush(iomap->dax_dev, kaddr + offset, size);
>  	}
>  	dax_read_unlock(id);
> -	return 0;
> +	return size;
>  }
>  
>  static loff_t
> diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
> index cb25a7b70401..3e1eb40a73fd 100644
> --- a/fs/iomap/buffered-io.c
> +++ b/fs/iomap/buffered-io.c
> @@ -898,11 +898,13 @@ iomap_file_unshare(struct inode *inode, loff_t pos, loff_t len,
>  }
>  EXPORT_SYMBOL_GPL(iomap_file_unshare);
>  
> -static int iomap_zero(struct inode *inode, loff_t pos, unsigned offset,
> -		unsigned bytes, struct iomap *iomap, struct iomap *srcmap)
> +static s64 iomap_zero(struct inode *inode, loff_t pos, u64 length,
> +		struct iomap *iomap, struct iomap *srcmap)
>  {
>  	struct page *page;
>  	int status;
> +	unsigned offset = offset_in_page(pos);
> +	unsigned bytes = min_t(u64, PAGE_SIZE - offset, length);
>  
>  	status = iomap_write_begin(inode, pos, bytes, 0, &page, iomap, srcmap);
>  	if (status)
> @@ -914,38 +916,33 @@ static int iomap_zero(struct inode *inode, loff_t pos, unsigned offset,
>  	return iomap_write_end(inode, pos, bytes, bytes, page, iomap, srcmap);
>  }
>  
> -static loff_t
> -iomap_zero_range_actor(struct inode *inode, loff_t pos, loff_t count,
> -		void *data, struct iomap *iomap, struct iomap *srcmap)
> +static loff_t iomap_zero_range_actor(struct inode *inode, loff_t pos,
> +		loff_t length, void *data, struct iomap *iomap,

Any reason not to change @length and the return value to s64?

--D

> +		struct iomap *srcmap)
>  {
>  	bool *did_zero = data;
>  	loff_t written = 0;
> -	int status;
>  
>  	/* already zeroed?  we're done. */
>  	if (srcmap->type == IOMAP_HOLE || srcmap->type == IOMAP_UNWRITTEN)
> -		return count;
> +		return length;
>  
>  	do {
> -		unsigned offset, bytes;
> -
> -		offset = offset_in_page(pos);
> -		bytes = min_t(loff_t, PAGE_SIZE - offset, count);
> +		s64 bytes;
>  
>  		if (IS_DAX(inode))
> -			status = dax_iomap_zero(pos, offset, bytes, iomap);
> +			bytes = dax_iomap_zero(pos, length, iomap);
>  		else
> -			status = iomap_zero(inode, pos, offset, bytes, iomap,
> -					srcmap);
> -		if (status < 0)
> -			return status;
> +			bytes = iomap_zero(inode, pos, length, iomap, srcmap);
> +		if (bytes < 0)
> +			return bytes;
>  
>  		pos += bytes;
> -		count -= bytes;
> +		length -= bytes;
>  		written += bytes;
>  		if (did_zero)
>  			*did_zero = true;
> -	} while (count > 0);
> +	} while (length > 0);
>  
>  	return written;
>  }
> diff --git a/include/linux/dax.h b/include/linux/dax.h
> index 6904d4e0b2e0..951a851a0481 100644
> --- a/include/linux/dax.h
> +++ b/include/linux/dax.h
> @@ -214,8 +214,7 @@ vm_fault_t dax_finish_sync_fault(struct vm_fault *vmf,
>  int dax_delete_mapping_entry(struct address_space *mapping, pgoff_t index);
>  int dax_invalidate_mapping_entry_sync(struct address_space *mapping,
>  				      pgoff_t index);
> -int dax_iomap_zero(loff_t pos, unsigned offset, unsigned size,
> -			struct iomap *iomap);
> +s64 dax_iomap_zero(loff_t pos, u64 length, struct iomap *iomap);
>  static inline bool dax_mapping(struct address_space *mapping)
>  {
>  	return mapping->host && IS_DAX(mapping->host);
> -- 
> 2.28.0
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
