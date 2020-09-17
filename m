Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C99826E829
	for <lists+jfs-discussion@lfdr.de>; Fri, 18 Sep 2020 00:19:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kJ2FM-0004z0-0D; Thu, 17 Sep 2020 22:19:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <darrick.wong@oracle.com>) id 1kJ2FK-0004yd-Ha
 for jfs-discussion@lists.sourceforge.net; Thu, 17 Sep 2020 22:19:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RUEE1gdARxSd8TLKFRIs3ndOmPAr4ZKel97nw+RPwJM=; b=BOT+IB4hJLjrYyVAj7RLOcsHSp
 ez6Rosp+pRrjuSNruVGN17mlyMCjIjX1RyFtGHAa3GcDCK0/Q5SaEHb+9NaingFWIScV5x/+/9gp8
 M4qrcBjRMHd9r5RrUmxUUEhY3GhLzX6KjHCSpJsmSzFn4Hk0mJ5t5ErpZ0A9dxFp5WsM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RUEE1gdARxSd8TLKFRIs3ndOmPAr4ZKel97nw+RPwJM=; b=BAvgEw4ctAvojNJvn2R/4bktFP
 gshn1VZuqIVDIr8RcMVnLeAv53tAwiswp2MH3vCnPLDwh+wbaxCFbkLUG34bz9eh51bbdRv8Yxkn/
 XDYgcb5RjWoQ9ex23JMxSJ7x+bH/weqiq5ixkXJvncE7i+Uew2kg93xrRhCKVeK5TDr8=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJ2FD-00DXKA-SG
 for jfs-discussion@lists.sourceforge.net; Thu, 17 Sep 2020 22:19:18 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08HMJ2VC131566;
 Thu, 17 Sep 2020 22:19:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=RUEE1gdARxSd8TLKFRIs3ndOmPAr4ZKel97nw+RPwJM=;
 b=K3zvi+KuVfbFuBqN+Gfl8KU0HDG27V5ZTPOFdbX2O2b8q+JKQIj/tukic9oNphrt1hAb
 GAO8IgAh1dDpnKNKmf6qMzK12U8EnBzrvvyhKLVW4uCLDopCU/KXTI+UJb+UxiHvvOva
 0M6RQrhk3HzsGCfi52OoQ3nKcB/EdhTMgfX31uTcjecFWCNCn5QNhoDlB/i3hFTxX0QQ
 vQX5nfPOblo+bpHgSEue0x2ZhhQZ0aIjtD95kbgR/06U/3p2RdLCC4xxFy+df3VagSQx
 71Qx9lkLQS9aqd4xmu0CCNyJ/7vnTPDkFgKO1dzywKAFztPYDeS5fP8DdPoO85vD+OBe BA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 33gp9mm15q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Sep 2020 22:19:02 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08HM05kk102004;
 Thu, 17 Sep 2020 22:19:01 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 33khpnr2mf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 17 Sep 2020 22:19:01 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 08HMJ0kd019685;
 Thu, 17 Sep 2020 22:19:00 GMT
Received: from localhost (/10.159.155.161)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 17 Sep 2020 22:18:59 +0000
Date: Thu, 17 Sep 2020 15:18:58 -0700
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20200917221858.GH7964@magnolia>
References: <20200910234707.5504-1-willy@infradead.org>
 <20200910234707.5504-10-willy@infradead.org>
 <20200917220500.GR7955@magnolia>
 <20200917221115.GY5449@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917221115.GY5449@casper.infradead.org>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9747
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=1
 mlxlogscore=999 phishscore=0 mlxscore=0 adultscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009170162
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9747
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999
 adultscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 spamscore=0 priorityscore=1501 suspectscore=1 impostorscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009170163
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -3.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kJ2FD-00DXKA-SG
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

On Thu, Sep 17, 2020 at 11:11:15PM +0100, Matthew Wilcox wrote:
> On Thu, Sep 17, 2020 at 03:05:00PM -0700, Darrick J. Wong wrote:
> > > -static loff_t
> > > -iomap_zero_range_actor(struct inode *inode, loff_t pos, loff_t count,
> > > -		void *data, struct iomap *iomap, struct iomap *srcmap)
> > > +static loff_t iomap_zero_range_actor(struct inode *inode, loff_t pos,
> > > +		loff_t length, void *data, struct iomap *iomap,
> > 
> > Any reason not to change @length and the return value to s64?
> 
> Because it's an actor, passed to iomap_apply, so its types have to match.
> I can change that, but it'll be a separate patch series.

Ah, right.  I seemingly forgot that. :(

Carry on.
Reviewed-by: Darrick J. Wong <darrick.wong@oracle.com>

--D


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
