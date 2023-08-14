Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FB777BA8E
	for <lists+jfs-discussion@lfdr.de>; Mon, 14 Aug 2023 15:48:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qVXvD-0001e8-0x;
	Mon, 14 Aug 2023 13:47:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1qVXvC-0001dm-05
 for jfs-discussion@lists.sourceforge.net;
 Mon, 14 Aug 2023 13:47:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U85vn66eLLutJijBRQdJa82zVtxRnHvd/Y+89uhCRJ8=; b=ebWW5x5XIC70I1vQRLU381CkwD
 +W3pauRMgYu8bAotHOXEsnKgvbJ+N6uhPiwFm1uOS9EgN5UmsCjFpODSnWpX58FCVyqTtel0ftMTc
 gr6BzEinpK8/Oo7OUYYKmbm79MqwMG2Km8BsVFZRON9C07pXTR5uMgrQqEyTiy9lgaXI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U85vn66eLLutJijBRQdJa82zVtxRnHvd/Y+89uhCRJ8=; b=DOBYNPeOYRkKzdTfmiiEMZ89M6
 YMAPSceR72vRe6xryUgJlcd8+3ixB+x2cZNOnvDi1OgslEn8tJk6bczUHQ3QH+78zcQjF6++Hma2g
 RhyBgI5BS2CjlSDhi0jfdtTm4vA3EZFaJb8fNMz6og4dyxT0hgoTPFEc+7jw5tNoL55A=;
Received: from mgamail.intel.com ([192.55.52.115])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qVXv5-0001mg-KU for jfs-discussion@lists.sourceforge.net;
 Mon, 14 Aug 2023 13:47:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692020863; x=1723556863;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ePs0UmKu1hjztHu9C+rXU1GIS085e6zZzqafi/eRvjY=;
 b=POp1zijYQTR5ivwws1suDpbBcu2Z/xM9v/Mz9YMzshurtK9mfTrMmK1b
 HjgSeIaYJo1IlnoDp77Q/SI5QTxwHbMxVf+iPA755AHIuOvTeJEOjNoib
 xJOubLvJYDNkGuF7FiXoNcMmEtCstz9bjmkbgecI245Cf88U+VTKMAG2c
 GyIIuStypVCokJoTQKxwerM5lIg+qLin3Fb5rlTNA138MKYZTQddBf3K2
 rqFjGT59UrNVT87LLbv0NeGHRplhn0MRAqhh7t3OsMY4gxLxqAmeFK7R0
 5Q/ct+i2SLQFSKc2zkKXdHfvB8Tk3monL3SfXyzbXamPGxKlWmluWgXuU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="372035497"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="372035497"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 06:47:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="847663850"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="847663850"
Received: from lkp-server02.sh.intel.com (HELO b5fb8d9e1ffc) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 14 Aug 2023 06:47:34 -0700
Received: from kbuild by b5fb8d9e1ffc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qVXuv-0000AZ-1r;
 Mon, 14 Aug 2023 13:47:33 +0000
Date: Mon, 14 Aug 2023 21:47:15 +0800
To: linux@treblig.org, smfrench@gmail.com, dave.kleikamp@oracle.com,
 tom@talpey.com, pc@manguebit.com
Message-ID: <202308142118.G4M0uxEm-lkp@intel.com>
References: <20230813005344.112955-4-linux@treblig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230813005344.112955-4-linux@treblig.org>
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, kernel test robot noticed the following build warnings:
 [auto build test WARNING on cifs/for-next] [also build test WARNING on
 kleikamp-shaggy/jfs-next
 linus/master v6.5-rc6 next-20230809] [If your patch is applied to the wrong
 git tree, kindly drop us a n [...] 
 Content analysis details:   (-3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qVXv5-0001mg-KU
Subject: Re: [Jfs-discussion] [PATCH v4 3/4] fs/smb/client: Use common code
 in client
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
From: kernel test robot via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: kernel test robot <lkp@intel.com>
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, "Dr. David Alan Gilbert" <linux@treblig.org>,
 oe-kbuild-all@lists.linux.dev, krisman@collabora.com, linkinjeon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi,

kernel test robot noticed the following build warnings:

[auto build test WARNING on cifs/for-next]
[also build test WARNING on kleikamp-shaggy/jfs-next linus/master v6.5-rc6 next-20230809]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/linux-treblig-org/fs-smb-Remove-unicode-lower-tables/20230813-085613
base:   git://git.samba.org/sfrench/cifs-2.6.git for-next
patch link:    https://lore.kernel.org/r/20230813005344.112955-4-linux%40treblig.org
patch subject: [PATCH v4 3/4] fs/smb/client: Use common code in client
config: i386-randconfig-i062-20230814 (https://download.01.org/0day-ci/archive/20230814/202308142118.G4M0uxEm-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230814/202308142118.G4M0uxEm-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308142118.G4M0uxEm-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> fs/smb/client/smb2pdu.c:2573:27: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected unsigned short [usertype] *ucs1 @@     got restricted __le16 [usertype] * @@
   fs/smb/client/smb2pdu.c:2573:27: sparse:     expected unsigned short [usertype] *ucs1
   fs/smb/client/smb2pdu.c:2573:27: sparse:     got restricted __le16 [usertype] *
>> fs/smb/client/smb2pdu.c:2573:38: sparse: sparse: incorrect type in argument 2 (different base types) @@     expected unsigned short const [usertype] *ucs2 @@     got restricted __le16 const * @@
   fs/smb/client/smb2pdu.c:2573:38: sparse:     expected unsigned short const [usertype] *ucs2
   fs/smb/client/smb2pdu.c:2573:38: sparse:     got restricted __le16 const *
   fs/smb/client/smb2pdu.c:2574:27: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected unsigned short [usertype] *ucs1 @@     got restricted __le16 [usertype] * @@
   fs/smb/client/smb2pdu.c:2574:27: sparse:     expected unsigned short [usertype] *ucs1
   fs/smb/client/smb2pdu.c:2574:27: sparse:     got restricted __le16 [usertype] *
>> fs/smb/client/smb2pdu.c:2574:38: sparse: sparse: incorrect type in argument 2 (different base types) @@     expected unsigned short const [usertype] *ucs2 @@     got restricted __le16 const [usertype] *path @@
   fs/smb/client/smb2pdu.c:2574:38: sparse:     expected unsigned short const [usertype] *ucs2
   fs/smb/client/smb2pdu.c:2574:38: sparse:     got restricted __le16 const [usertype] *path

vim +2573 fs/smb/client/smb2pdu.c

ff2a09e9196e2f fs/cifs/smb2pdu.c Steve French      2019-07-06  2535  
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2536  static int
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2537  alloc_path_with_tree_prefix(__le16 **out_path, int *out_size, int *out_len,
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2538  			    const char *treename, const __le16 *path)
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2539  {
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2540  	int treename_len, path_len;
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2541  	struct nls_table *cp;
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2542  	const __le16 sep[] = {cpu_to_le16('\\'), cpu_to_le16(0x0000)};
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2543  
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2544  	/*
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2545  	 * skip leading "\\"
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2546  	 */
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2547  	treename_len = strlen(treename);
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2548  	if (treename_len < 2 || !(treename[0] == '\\' && treename[1] == '\\'))
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2549  		return -EINVAL;
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2550  
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2551  	treename += 2;
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2552  	treename_len -= 2;
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2553  
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2554  	path_len = UniStrnlen((wchar_t *)path, PATH_MAX);
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2555  
a1d2eb51f0a33c fs/cifs/smb2pdu.c Paulo Alcantara   2022-08-19  2556  	/* make room for one path separator only if @path isn't empty */
a1d2eb51f0a33c fs/cifs/smb2pdu.c Paulo Alcantara   2022-08-19  2557  	*out_len = treename_len + (path[0] ? 1 : 0) + path_len;
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2558  
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2559  	/*
a1d2eb51f0a33c fs/cifs/smb2pdu.c Paulo Alcantara   2022-08-19  2560  	 * final path needs to be 8-byte aligned as specified in
a1d2eb51f0a33c fs/cifs/smb2pdu.c Paulo Alcantara   2022-08-19  2561  	 * MS-SMB2 2.2.13 SMB2 CREATE Request.
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2562  	 */
d7173623bf0b15 fs/cifs/smb2pdu.c Enzo Matsumiya    2022-10-12  2563  	*out_size = round_up(*out_len * sizeof(__le16), 8);
a1d2eb51f0a33c fs/cifs/smb2pdu.c Paulo Alcantara   2022-08-19  2564  	*out_path = kzalloc(*out_size + sizeof(__le16) /* null */, GFP_KERNEL);
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2565  	if (!*out_path)
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2566  		return -ENOMEM;
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2567  
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2568  	cp = load_nls_default();
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2569  	cifs_strtoUTF16(*out_path, treename, treename_len, cp);
7eacba3b00a3c3 fs/cifs/smb2pdu.c Eugene Korenevsky 2022-01-14  2570  
7eacba3b00a3c3 fs/cifs/smb2pdu.c Eugene Korenevsky 2022-01-14  2571  	/* Do not append the separator if the path is empty */
7eacba3b00a3c3 fs/cifs/smb2pdu.c Eugene Korenevsky 2022-01-14  2572  	if (path[0] != cpu_to_le16(0x0000)) {
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22 @2573  		UniStrcat(*out_path, sep);
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22 @2574  		UniStrcat(*out_path, path);
7eacba3b00a3c3 fs/cifs/smb2pdu.c Eugene Korenevsky 2022-01-14  2575  	}
7eacba3b00a3c3 fs/cifs/smb2pdu.c Eugene Korenevsky 2022-01-14  2576  
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2577  	unload_nls(cp);
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2578  
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2579  	return 0;
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2580  }
f0712928be1a66 fs/cifs/smb2pdu.c Aurelien Aptel    2017-02-22  2581  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
