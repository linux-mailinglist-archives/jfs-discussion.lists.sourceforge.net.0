Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECBB8B23B6
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Apr 2024 16:17:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rzzuU-00024p-Ix;
	Thu, 25 Apr 2024 14:17:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rzzuS-00024W-MM
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 14:17:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7t2rt4hOIW26jsBvBQJ76isBVw52l+x7mN9o20mi2qg=; b=HyHi3+pjul7ILAPjOyYSbd+2cj
 VceMM0lsFCfx8iHJhNDuC4z5S9FhGbp7k5AisSQ5gbD+P8KGMFgIuSx9hboLXwy6OkXPzw+w1hUeS
 lqTqbhwi6AvmyeBWFDrakU5qHv9jhsFxQFM2gw8we11urZUWulAOrArYNWsar/gQyysQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7t2rt4hOIW26jsBvBQJ76isBVw52l+x7mN9o20mi2qg=; b=JAHc/S1Dcp4+9L0EQI6wzhTGfp
 xmpBUEYMH76NFMvUHqbNU28DUcPdTTUb9QxuRdwXGS7lfmEijJPS6wuXDXC5aujCVvNe7kYqFedT3
 d0oGp3OWNN3UF6Y+DGzF4tvcaWUA5fgVMTnVmA2o3JgwCHgeiyaC5iYt7gXD4QT1qX8I=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzzuR-0003Ch-Jr for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 14:17:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=7t2rt4hOIW26jsBvBQJ76isBVw52l+x7mN9o20mi2qg=; b=j5G5/IjuClTCbnkjwouWfvSkDK
 RG92JAoxM+nanJJX4xMNGuQSmnHkRf0/xK7xeswkt/sv6Fmre97crTGHa0jsDhRRriQw7I/WdfItd
 seJ0d55t9UYhnXKpdGjRfsabjf10Pt2rEBAOzCAURxK9huWjztwuqnMTbNEb8+M6bEc1JoI7R5vic
 fgia30aFHf+nGNGz4ty+goWIf6Il7yGJOKqhr5jeQZIOY6mjpdqsX7vZu0DZ1Sw33VgJQK7+Dl28b
 YaxWVrskyj2GLfh216ZsuadvZvc3zzrv32g7yuHzoGvzeOEvdO2rhUmkIXxkeZ9hgkdrEkHiJ98RP
 eTjpaSxA==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rzzuK-00000003BJe-473Z;
 Thu, 25 Apr 2024 14:17:05 +0000
Date: Thu, 25 Apr 2024 15:17:04 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Jeongjun Park <aha310510@gmail.com>
Message-ID: <Zipl4PQ9Q7sBlMCt@casper.infradead.org>
References: <ZipSO4ITxuy2faKx@casper.infradead.org>
 <20240425141038.47054-1-aha310510@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240425141038.47054-1-aha310510@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 25, 2024 at 11:10:38PM +0900,
 Jeongjun Park wrote:
 > Matthew Wilcox wrote: > > If that's the problem then the correct place
 to detect & reject this is > > during mount, not at inode free t [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1rzzuR-0003Ch-Jr
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix array-index-out-of-bounds in
 diFree
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
Cc: shaggy@kernel.org, brauner@kernel.org, syzkaller-bugs@googlegroups.com,
 jlayton@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Apr 25, 2024 at 11:10:38PM +0900, Jeongjun Park wrote:
> Matthew Wilcox wrote:
> > If that's the problem then the correct place to detect & reject this is
> > during mount, not at inode free time.
> 
> I fixed the patch as you said. If you patch in this way, the 
> file system will not be affected by the vulnerability at all 
> due to the code structure.

It should be checked earlier than this.  There's this code in
dbMount().  Why isn't this catching it?

        bmp->db_agl2size = le32_to_cpu(dbmp_le->dn_agl2size);
        if (bmp->db_agl2size > L2MAXL2SIZE - L2MAXAG ||
            bmp->db_agl2size < 0) {
                err = -EINVAL;
                goto err_release_metapage;
        }

        if (((bmp->db_mapsize - 1) >> bmp->db_agl2size) > MAXAG) {
                err = -EINVAL;
                goto err_release_metapage;
        }


> Thanks.
> 
> ---
>  fs/jfs/jfs_imap.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index 2ec35889ad24..ba0aa2f145cc 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -290,7 +290,7 @@ int diSync(struct inode *ipimap)
>  int diRead(struct inode *ip)
>  {
>  	struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
> -	int iagno, ino, extno, rc;
> +	int iagno, ino, extno, rc, agno;
>  	struct inode *ipimap;
>  	struct dinode *dp;
>  	struct iag *iagp;
> @@ -339,6 +339,9 @@ int diRead(struct inode *ip)
>  
>  	/* get the ag for the iag */
>  	agstart = le64_to_cpu(iagp->agstart);
> +	agno = BLKTOAG(agstart, JFS_SBI(ip->i_sb));
> +	if(agno >= MAXAG || agno < 0)
> +		return -EIO;
>  
>  	release_metapage(mp);
>  
> -- 
> 2.34.1


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
