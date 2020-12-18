Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 865A52DEA40
	for <lists+jfs-discussion@lfdr.de>; Fri, 18 Dec 2020 21:32:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kqMQM-0005yW-HE; Fri, 18 Dec 2020 20:32:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1kqMQK-0005y7-C3
 for jfs-discussion@lists.sourceforge.net; Fri, 18 Dec 2020 20:32:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HFbuznatVGjBL5fQc775ihF3yH3VtHWOJZWPjh0mMbw=; b=hM8r8LPvRWT9UxWXkR7EExGNbk
 KMt2aV9s9ydFTlUCYljAIPx1mIGpal6xgwHR30VAA032Gy2SDkOJbuYEF3BqZfev5mP/hSb5s3ukp
 5yXjpvSDxgtcQGK7vuTNrqW/R4YFbaqvUXvHokC/bMEn8wkFklhOPdDIOPl3ZkS34SLA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HFbuznatVGjBL5fQc775ihF3yH3VtHWOJZWPjh0mMbw=; b=jfFqOf/zyIG64QkbLkFGMETF9Z
 SVF8FuGPklT1u7yCi88138ttZMT4pVogitR95Mh70wAx4u6MFPBC7zyc4EXsIw3wV9vTNBQAxX1tv
 RpbM7bxXqSuKFclpTTC1sKoMNb9Is9VH4gf9Cga7RTkqRM7waSBYgGYZq1Sfsnp4IILY=;
Received: from aserp2130.oracle.com ([141.146.126.79])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kqMQE-001iDv-Nc
 for jfs-discussion@lists.sourceforge.net; Fri, 18 Dec 2020 20:32:24 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BIKU9j8080499;
 Fri, 18 Dec 2020 20:31:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=HFbuznatVGjBL5fQc775ihF3yH3VtHWOJZWPjh0mMbw=;
 b=Hr8v9OBA5wGVN0MRKOiF3bLUsZfyLVpIgGJcb4KBKJ23Y5itqItR0wkk4ed3CG1lgrdg
 ZOzEUSqmQZrjLbunzos0mvdYFeP+dNugLV4OC2SgTJK9A0Y+5kVwLpeM6Kdqpv2hCx/Z
 tlKZOH0CMwHe4UPR11uvha2E1bB4iv8SzMXJrtx8x4dhSpQEOU2XXhu2qwbBvRjRAS+l
 OrQmoFCbYwSTPQRUOQY5jjUashwy9glaleFNjCMbbPwGj75t1Z08ix52kAp3AeCSzY65
 +cTdqdfqma9tD7DSqtdfTa0Dowx+ZleRCDsLfoEW8R0hxCs8xoR9/rGT6Mx90h6B/wQj Ag== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 35ckcbvay9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 18 Dec 2020 20:31:54 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BIKVNbj026269;
 Fri, 18 Dec 2020 20:31:53 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 35d7esqf7r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Dec 2020 20:31:53 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0BIKVpUE023714;
 Fri, 18 Dec 2020 20:31:52 GMT
Received: from [192.168.0.190] (/68.201.65.98)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 18 Dec 2020 12:31:51 -0800
To: Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org
References: <20201218201716.26613-1-rdunlap@infradead.org>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <285a8ede-c901-7d8c-bd3a-e9ce8962e714@oracle.com>
Date: Fri, 18 Dec 2020 14:31:50 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20201218201716.26613-1-rdunlap@infradead.org>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9839
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0 bulkscore=0
 suspectscore=0 adultscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012180138
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9839
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999
 priorityscore=1501 mlxscore=0 suspectscore=0 adultscore=0 phishscore=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 clxscore=1011
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012180138
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.79 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kqMQE-001iDv-Nc
Subject: Re: [Jfs-discussion] [PATCH v2] JFS: more checks for invalid
 superblock
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
 syzbot+36315852ece4132ec193@syzkaller.appspotmail.com,
 kernel test robot <lkp@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Thanks! This looks good and reasonable. I'll try to get it pushed out to 
-next in the next few days.

Shaggy

On 12/18/20 2:17 PM, Randy Dunlap wrote:
> syzbot is feeding invalid superblock data to JFS for mount testing.
> JFS does not check several of the fields -- just assumes that they
> are good since the JFS_MAGIC and version fields are good.
> 
> In this case (syzbot reproducer), we have s_l2bsize == 0xda0c,
> pad == 0xf045, and s_state == 0x50, all of which are invalid IMO.
> Having s_l2bsize == 0xda0c causes this UBSAN warning:
>    UBSAN: shift-out-of-bounds in fs/jfs/jfs_mount.c:373:25
>    shift exponent -9716 is negative
> 
> s_l2bsize can be tested for correctness. pad can be tested for non-0
> and punted. s_state can be tested for its valid values and punted.
> 
> Do those 3 tests and if any of them fails, report the superblock as
> invalid/corrupt and let fsck handle it.
> 
> With this patch, chkSuper() says this when JFS_DEBUG is enabled:
>    jfs_mount: Mount Failure: superblock is corrupt!
>    Mount JFS Failure: -22
>    jfs_mount failed w/return code = -22
> 
> The obvious problem with this method is that next week there could
> be another syzbot test that uses different fields for invalid values,
> this making this like a game of whack-a-mole.
> 
> syzkaller link: https://syzkaller.appspot.com/bug?extid=36315852ece4132ec193
> 
> Reported-by: syzbot+36315852ece4132ec193@syzkaller.appspotmail.com
> Reported-by: kernel test robot <lkp@intel.com> # v2
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Dave Kleikamp <shaggy@kernel.org>
> Cc: jfs-discussion@lists.sourceforge.net
> ---
> v2: fix sparse __le32 warning (lkp robot)
> 
>   fs/jfs/jfs_filsys.h |    1 +
>   fs/jfs/jfs_mount.c  |   10 ++++++++++
>   2 files changed, 11 insertions(+)
> 
> --- lnx-510.orig/fs/jfs/jfs_mount.c
> +++ lnx-510/fs/jfs/jfs_mount.c
> @@ -37,6 +37,7 @@
>   #include <linux/fs.h>
>   #include <linux/buffer_head.h>
>   #include <linux/blkdev.h>
> +#include <linux/log2.h>
>   
>   #include "jfs_incore.h"
>   #include "jfs_filsys.h"
> @@ -366,6 +367,15 @@ static int chkSuper(struct super_block *
>   	sbi->bsize = bsize;
>   	sbi->l2bsize = le16_to_cpu(j_sb->s_l2bsize);
>   
> +	/* check some fields for possible corruption */
> +	if (sbi->l2bsize != ilog2((u32)bsize) ||
> +	    j_sb->pad != 0 ||
> +	    le32_to_cpu(j_sb->s_state) > FM_STATE_MAX) {
> +		rc = -EINVAL;
> +		jfs_err("jfs_mount: Mount Failure: superblock is corrupt!");
> +		goto out;
> +	}
> +
>   	/*
>   	 * For now, ignore s_pbsize, l2bfactor.  All I/O going through buffer
>   	 * cache.
> --- lnx-510.orig/fs/jfs/jfs_filsys.h
> +++ lnx-510/fs/jfs/jfs_filsys.h
> @@ -268,5 +268,6 @@
>   				 * fsck() must be run to repair
>   				 */
>   #define	FM_EXTENDFS 0x00000008	/* file system extendfs() in progress */
> +#define	FM_STATE_MAX 0x0000000f	/* max value of s_state */
>   
>   #endif				/* _H_JFS_FILSYS */
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
