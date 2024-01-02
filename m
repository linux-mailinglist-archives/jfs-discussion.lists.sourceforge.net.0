Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D38AB821D70
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 Jan 2024 15:11:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rKfUP-0004WD-S1;
	Tue, 02 Jan 2024 14:11:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dan.carpenter@linaro.org>) id 1rKfUN-0004W7-NH
 for jfs-discussion@lists.sourceforge.net;
 Tue, 02 Jan 2024 14:11:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GeJuJizoWeAs29loa6MRIjI0gunccegFhfT3lI/DWIs=; b=Hj2R+YB69txfZ7punT+ooQplfD
 KTMmRzhJ8zq0Rvmht9VvZe/pnnHU+ENSgynFoidizHpUFCTwpAT0T8tbbv/G72BJS6RhAbrDsfoma
 W2JoKqv9gljc6ltQKSrS6J2PSRjChyfx/HgZQuwW2GDhU7una4RM7n67vN+W2XNSnYv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GeJuJizoWeAs29loa6MRIjI0gunccegFhfT3lI/DWIs=; b=U
 jsilKKJnFMLYjJWol2+qqMSbjUCtsLyLMK2TLLAYb0NZJ2H/FLGRGs49ACgFW00Gj2pSoppNL05Zg
 ozCPlvyGUvfc3lHkaM5pa0+8H1QuNYMpKIXiGXI62u6akjKJ3O4zSxVsOn53OKytbMUjTd7t9e+C2
 UfK/RhyXNdPNWiYk=;
Received: from mail-ed1-f47.google.com ([209.85.208.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rKfUG-0002mH-Vd for jfs-discussion@lists.sourceforge.net;
 Tue, 02 Jan 2024 14:11:28 +0000
Received: by mail-ed1-f47.google.com with SMTP id
 4fb4d7f45d1cf-5553f251e3cso3964034a12.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 02 Jan 2024 06:11:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1704204674; x=1704809474; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=GeJuJizoWeAs29loa6MRIjI0gunccegFhfT3lI/DWIs=;
 b=pd/HINYOmMHE//iMTOo7fmL4rWtHWUUqMPfunY6El6PAOGtH5IrffqjITOjodeZ+0i
 VRpiU1yKcQfNig3Xd5CP6pr+XdfFmx8TXYXZs3W0s5hTCPuA6Jj/r51Z6l2nImetkJv7
 2Nt+vJKu9MAXBNUetNhG53ZUTMUT4SmmysnWJ051hOAWOYL/T3B+C608LUFvdsw15ucd
 tCofRo9eFExuOFGFKu9V/OSoq6uHqtJPfyuooJRAWCoRwrFH4lzx3gzUe1W6XC6Xsy2O
 gVjHCyOSYoIK2VsLMjFgD4T7qITWnSORarG3YgXlelWQgYrbchR8uWwUxaH/EcoyD3jH
 Xj0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704204674; x=1704809474;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GeJuJizoWeAs29loa6MRIjI0gunccegFhfT3lI/DWIs=;
 b=BrPzmOONnmN7EWYxwcBgCbP+k218OfL84HxG34cogMoBDlLlcmKy1/R8uEF5ClMZNW
 0HoMUc3a7BOofTz0b/XH7pmHrZTUrON5zCw3jk6UJm4rS9Wj/O5ge6pa+i50yQIy8ClM
 FzlhV05LqkSlLbVzOHyvZc9+4I7MMYOToSyU3AAnGc86d/M3lWue8chgTu/vB3Fk7Vdr
 ynsZxitX7q8ssup4Bovss3Y3ML3Gd7cB3Xa2hOXdvPX4pzArJdaSyxVXQDDFm/wbAuoe
 iCQueaWBjk0t6Y0DOKGBnI5H2k88OpxMVD5hF8qrWqCGdaxdRdUPquQgDZ5+f9zj9mLE
 aiFw==
X-Gm-Message-State: AOJu0YzUJEESg0ReeGeVDnPr1aum2IG92ocRA/j/j1F6dR2Ql0e2Px9/
 AM89Ec/Lf220GFv1ZZdD/rMzfSzGfBTljyj0OGB0wkUhbE8=
X-Google-Smtp-Source: AGHT+IE/lxBI2psr/eyrLZFMSVyOi8+3ecJpLXDxAYrw3nUMQDDIqSUNcdGH6FQb1H0HxA0PUgdCHw==
X-Received: by 2002:a5d:5145:0:b0:336:7f03:4af with SMTP id
 u5-20020a5d5145000000b003367f0304afmr10379008wrt.123.1704204226988; 
 Tue, 02 Jan 2024 06:03:46 -0800 (PST)
Received: from localhost ([102.140.209.237]) by smtp.gmail.com with ESMTPSA id
 q17-20020adfcd91000000b003362d0eefd3sm28380018wrj.20.2024.01.02.06.03.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jan 2024 06:03:46 -0800 (PST)
Date: Tue, 2 Jan 2024 16:29:12 +0300
To: oe-kbuild@lists.linux.dev, Edward Adam Davis <eadavis@qq.com>,
 syzbot+553d90297e6d2f50dbc7@syzkaller.appspotmail.com
Message-ID: <828db1e9-9b98-4797-bd23-08fbae1260d3@suswa.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_B86ECD2ECECC92A7ED86EF92D0064A499206@qq.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Edward,
 kernel test robot noticed the following build warnings:
 https://git-scm.com/docs/git-format-patch#_base_tree_information] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rKfUG-0002mH-Vd
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 diNewExt
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
From: Dan Carpenter via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, lkp@intel.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 oe-kbuild-all@lists.linux.dev, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi Edward,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Edward-Adam-Davis/jfs-fix-array-index-out-of-bounds-in-diNewExt/20231212-095530
base:   https://github.com/kleikamp/linux-shaggy jfs-next
patch link:    https://lore.kernel.org/r/tencent_B86ECD2ECECC92A7ED86EF92D0064A499206%40qq.com
patch subject: [PATCH] jfs: fix array-index-out-of-bounds in diNewExt
config: i386-randconfig-141-20231212 (https://download.01.org/0day-ci/archive/20231214/202312142348.6HRZtXTB-lkp@intel.com/config)
compiler: gcc-7 (Ubuntu 7.5.0-6ubuntu2) 7.5.0
reproduce: (https://download.01.org/0day-ci/archive/20231214/202312142348.6HRZtXTB-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202312142348.6HRZtXTB-lkp@intel.com/

New smatch warnings:
fs/jfs/jfs_imap.c:2213 diNewExt() error: buffer overflow 'imap->im_imap.in_agctl' 128 <= 128

Old smatch warnings:
fs/jfs/jfs_imap.c:2229 diNewExt() error: buffer overflow 'imap->im_imap.in_agctl' 128 <= 128
fs/jfs/jfs_imap.c:2304 diNewExt() error: buffer overflow 'imap->im_imap.in_agctl' 128 <= 128
fs/jfs/jfs_imap.c:2318 diNewExt() error: buffer overflow 'imap->im_imap.in_agctl' 128 <= 128
fs/jfs/jfs_imap.c:2330 diNewExt() error: buffer overflow 'imap->im_imap.in_agctl' 128 <= 128
fs/jfs/jfs_imap.c:2332 diNewExt() error: buffer overflow 'imap->im_imap.in_agctl' 128 <= 128
fs/jfs/jfs_imap.c:2363 diNewExt() error: buffer overflow 'imap->im_imap.in_agctl' 128 <= 128
fs/jfs/jfs_imap.c:2364 diNewExt() error: buffer overflow 'imap->im_imap.in_agctl' 128 <= 128

vim +2213 fs/jfs/jfs_imap.c

^1da177e4c3f41 Linus Torvalds    2005-04-16  2152  static int diNewExt(struct inomap * imap, struct iag * iagp, int extno)
^1da177e4c3f41 Linus Torvalds    2005-04-16  2153  {
^1da177e4c3f41 Linus Torvalds    2005-04-16  2154  	int agno, iagno, fwd, back, freei = 0, sword, rc;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2155  	struct iag *aiagp = NULL, *biagp = NULL, *ciagp = NULL;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2156  	struct metapage *amp, *bmp, *cmp, *dmp;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2157  	struct inode *ipimap;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2158  	s64 blkno, hint;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2159  	int i, j;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2160  	u32 mask;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2161  	ino_t ino;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2162  	struct dinode *dp;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2163  	struct jfs_sb_info *sbi;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2164  
^1da177e4c3f41 Linus Torvalds    2005-04-16  2165  	/* better have free extents.
^1da177e4c3f41 Linus Torvalds    2005-04-16  2166  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  2167  	if (!iagp->nfreeexts) {
eb8630d7d2fd13 Joe Perches       2013-06-04  2168  		jfs_error(imap->im_ipimap->i_sb, "no free extents\n");
^1da177e4c3f41 Linus Torvalds    2005-04-16  2169  		return -EIO;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2170  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  2171  
^1da177e4c3f41 Linus Torvalds    2005-04-16  2172  	/* get the inode map inode.
^1da177e4c3f41 Linus Torvalds    2005-04-16  2173  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  2174  	ipimap = imap->im_ipimap;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2175  	sbi = JFS_SBI(ipimap->i_sb);
^1da177e4c3f41 Linus Torvalds    2005-04-16  2176  
^1da177e4c3f41 Linus Torvalds    2005-04-16  2177  	amp = bmp = cmp = NULL;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2178  
^1da177e4c3f41 Linus Torvalds    2005-04-16  2179  	/* get the ag and iag numbers for this iag.
^1da177e4c3f41 Linus Torvalds    2005-04-16  2180  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  2181  	agno = BLKTOAG(le64_to_cpu(iagp->agstart), sbi);
f93b91b82fcf16 Edward Adam Davis 2023-12-12  2182  	if (agno > MAXAG || agno < 0)

The commit introduces this agno > MAXAG comparison.  But Smatch says
that it should be agno >= MAXAG.

f93b91b82fcf16 Edward Adam Davis 2023-12-12  2183  		return -EIO;
f93b91b82fcf16 Edward Adam Davis 2023-12-12  2184  
^1da177e4c3f41 Linus Torvalds    2005-04-16  2185  	iagno = le32_to_cpu(iagp->iagnum);
^1da177e4c3f41 Linus Torvalds    2005-04-16  2186  
^1da177e4c3f41 Linus Torvalds    2005-04-16  2187  	/* check if this is the last free extent within the
^1da177e4c3f41 Linus Torvalds    2005-04-16  2188  	 * iag.  if so, the iag must be removed from the ag
25985edcedea63 Lucas De Marchi   2011-03-30  2189  	 * free extent list, so get the iags preceding and
^1da177e4c3f41 Linus Torvalds    2005-04-16  2190  	 * following the iag on this list.
^1da177e4c3f41 Linus Torvalds    2005-04-16  2191  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  2192  	if (iagp->nfreeexts == cpu_to_le32(1)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  2193  		if ((fwd = le32_to_cpu(iagp->extfreefwd)) >= 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  2194  			if ((rc = diIAGRead(imap, fwd, &amp)))
^1da177e4c3f41 Linus Torvalds    2005-04-16  2195  				return (rc);
^1da177e4c3f41 Linus Torvalds    2005-04-16  2196  			aiagp = (struct iag *) amp->data;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2197  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  2198  
^1da177e4c3f41 Linus Torvalds    2005-04-16  2199  		if ((back = le32_to_cpu(iagp->extfreeback)) >= 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  2200  			if ((rc = diIAGRead(imap, back, &bmp)))
^1da177e4c3f41 Linus Torvalds    2005-04-16  2201  				goto error_out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2202  			biagp = (struct iag *) bmp->data;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2203  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  2204  	} else {
^1da177e4c3f41 Linus Torvalds    2005-04-16  2205  		/* the iag has free extents.  if all extents are free
^1da177e4c3f41 Linus Torvalds    2005-04-16  2206  		 * (as is the case for a newly allocated iag), the iag
^1da177e4c3f41 Linus Torvalds    2005-04-16  2207  		 * must be added to the ag free extent list, so get
^1da177e4c3f41 Linus Torvalds    2005-04-16  2208  		 * the iag at the head of the list in preparation for
^1da177e4c3f41 Linus Torvalds    2005-04-16  2209  		 * adding this iag to this list.
^1da177e4c3f41 Linus Torvalds    2005-04-16  2210  		 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  2211  		fwd = back = -1;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2212  		if (iagp->nfreeexts == cpu_to_le32(EXTSPERIAG)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16 @2213  			if ((fwd = imap->im_agctl[agno].extfree) >= 0) {

If agno == MAXAG then we're out of bounds here.

^1da177e4c3f41 Linus Torvalds    2005-04-16  2214  				if ((rc = diIAGRead(imap, fwd, &amp)))
^1da177e4c3f41 Linus Torvalds    2005-04-16  2215  					goto error_out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2216  				aiagp = (struct iag *) amp->data;
^1da177e4c3f41 Linus Torvalds    2005-04-16  2217  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  2218  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  2219  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  2220  
^1da177e4c3f41 Linus Torvalds    2005-04-16  2221  	/* check if the iag has no free inodes.  if so, the iag

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
