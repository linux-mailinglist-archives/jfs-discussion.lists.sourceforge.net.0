Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE448312571
	for <lists+jfs-discussion@lfdr.de>; Sun,  7 Feb 2021 16:39:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l8m9q-0003SI-4G; Sun, 07 Feb 2021 15:39:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lkp@intel.com>) id 1l8h8L-0007Fs-2O
 for jfs-discussion@lists.sourceforge.net; Sun, 07 Feb 2021 10:17:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mm8XFE3n25jG35MspXMO+aq1bEcMTZWya8Ir5eEnhKU=; b=YmrVH3gmvy9/ypUTW5THjMtHmP
 zUM6b3q4owErQ+EAA3C7kFxWrw0QEFvYwVO5ubGygJQnmrJ54C+MnVu8vtSXex0AFCA22hjl7B5Zf
 Znpeplbv4zTQuc5njwpdgyw6ASM1eDA3oTC39Jaase44WdVGsT8TRJZrkGwa+fRINkn0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mm8XFE3n25jG35MspXMO+aq1bEcMTZWya8Ir5eEnhKU=; b=ln2R+f8ax0cDzt/iDal9VoQ3wR
 k70JBhiOl5P2Xe7xXg6yZCG6aZMtKCNfjWVPOCPbGLMmxA4+un+3VORtyKxwNBxjkdOmaL6RruSlM
 j+e6Efd3BLm1MvsTpriklAduj0/nexL70tBDuCxCiQflkZn3zLFFwzRHZcX7jHL+6Lhk=;
Received: from mga04.intel.com ([192.55.52.120])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l8h8C-00DAhe-3t
 for jfs-discussion@lists.sourceforge.net; Sun, 07 Feb 2021 10:17:37 +0000
IronPort-SDR: 1rD/weISyZ+IF253SnsfhOIe+saabtRjRWGqXb8Wfv0rqT06umSP7JXgpbwH47JEjLMZkpMSvY
 84AFXx06WRVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9887"; a="179038759"
X-IronPort-AV: E=Sophos;i="5.81,159,1610438400"; 
 d="gz'50?scan'50,208,50";a="179038759"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2021 02:17:22 -0800
IronPort-SDR: UU+wTc6xOFYb1l9KCcuZomT2EBJA1BWMi7RlDAO+jUBzCgUPcU6kLyU0VKRZVoSMf24lKdxih8
 J77fJmgkzAKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,159,1610438400"; 
 d="gz'50?scan'50,208,50";a="374072733"
Received: from lkp-server02.sh.intel.com (HELO 8b832f01bb9c) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 07 Feb 2021 02:17:19 -0800
Received: from kbuild by 8b832f01bb9c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l8h83-0002pt-AP; Sun, 07 Feb 2021 10:17:19 +0000
Date: Sun, 7 Feb 2021 18:16:46 +0800
From: kernel test robot <lkp@intel.com>
To: Yang Li <yang.lee@linux.alibaba.com>, shaggy@kernel.org
Message-ID: <202102071816.h0LgU9Ob-lkp@intel.com>
References: <1612686770-26163-1-git-send-email-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline
In-Reply-To: <1612686770-26163-1-git-send-email-yang.lee@linux.alibaba.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1l8h8C-00DAhe-3t
X-Mailman-Approved-At: Sun, 07 Feb 2021 15:39:27 +0000
Subject: Re: [Jfs-discussion] [PATCH v2] jfs: turn diLog(),
 dataLog() and txLog() into void functions
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
Cc: Yang Li <yang.lee@linux.alibaba.com>, jfs-discussion@lists.sourceforge.net,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Yang,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on shaggy/jfs-next]
[also build test ERROR on v5.11-rc6 next-20210125]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Yang-Li/jfs-turn-diLog-dataLog-and-txLog-into-void-functions/20210207-164143
base:   https://github.com/kleikamp/linux-shaggy jfs-next
config: i386-randconfig-s001-20210207 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-15) 9.3.0
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.3-215-g0fb77bb6-dirty
        # https://github.com/0day-ci/linux/commit/1d4e3ad79325df64962835ecc11999b520ffbc80
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Yang-Li/jfs-turn-diLog-dataLog-and-txLog-into-void-functions/20210207-164143
        git checkout 1d4e3ad79325df64962835ecc11999b520ffbc80
        # save the attached .config to linux build tree
        make W=1 C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   fs/jfs/jfs_txnmgr.c: In function 'txCommit':
>> fs/jfs/jfs_txnmgr.c:1259:10: error: void value not ignored as it ought to be
    1259 |  if ((rc = txLog(log, tblk, &cd)))
         |          ^


vim +1259 fs/jfs/jfs_txnmgr.c

^1da177e4c3f41 Linus Torvalds    2005-04-16  1084  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1085  /*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1086   *		transaction commit management
^1da177e4c3f41 Linus Torvalds    2005-04-16  1087   *		-----------------------------
^1da177e4c3f41 Linus Torvalds    2005-04-16  1088   */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1089  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1090  /*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1091   * NAME:	txCommit()
^1da177e4c3f41 Linus Torvalds    2005-04-16  1092   *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1093   * FUNCTION:	commit the changes to the objects specified in
^1da177e4c3f41 Linus Torvalds    2005-04-16  1094   *		clist.  For journalled segments only the
^1da177e4c3f41 Linus Torvalds    2005-04-16  1095   *		changes of the caller are committed, ie by tid.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1096   *		for non-journalled segments the data are flushed to
^1da177e4c3f41 Linus Torvalds    2005-04-16  1097   *		disk and then the change to the disk inode and indirect
^1da177e4c3f41 Linus Torvalds    2005-04-16  1098   *		blocks committed (so blocks newly allocated to the
^1da177e4c3f41 Linus Torvalds    2005-04-16  1099   *		segment will be made a part of the segment atomically).
^1da177e4c3f41 Linus Torvalds    2005-04-16  1100   *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1101   *		all of the segments specified in clist must be in
^1da177e4c3f41 Linus Torvalds    2005-04-16  1102   *		one file system. no more than 6 segments are needed
^1da177e4c3f41 Linus Torvalds    2005-04-16  1103   *		to handle all unix svcs.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1104   *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1105   *		if the i_nlink field (i.e. disk inode link count)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1106   *		is zero, and the type of inode is a regular file or
^1da177e4c3f41 Linus Torvalds    2005-04-16  1107   *		directory, or symbolic link , the inode is truncated
^1da177e4c3f41 Linus Torvalds    2005-04-16  1108   *		to zero length. the truncation is committed but the
^1da177e4c3f41 Linus Torvalds    2005-04-16  1109   *		VM resources are unaffected until it is closed (see
^1da177e4c3f41 Linus Torvalds    2005-04-16  1110   *		iput and iclose).
^1da177e4c3f41 Linus Torvalds    2005-04-16  1111   *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1112   * PARAMETER:
^1da177e4c3f41 Linus Torvalds    2005-04-16  1113   *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1114   * RETURN:
^1da177e4c3f41 Linus Torvalds    2005-04-16  1115   *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1116   * serialization:
^1da177e4c3f41 Linus Torvalds    2005-04-16  1117   *		on entry the inode lock on each segment is assumed
^1da177e4c3f41 Linus Torvalds    2005-04-16  1118   *		to be held.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1119   *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1120   * i/o error:
^1da177e4c3f41 Linus Torvalds    2005-04-16  1121   */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1122  int txCommit(tid_t tid,		/* transaction identifier */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1123  	     int nip,		/* number of inodes to commit */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1124  	     struct inode **iplist,	/* list of inode to commit */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1125  	     int flag)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1126  {
^1da177e4c3f41 Linus Torvalds    2005-04-16  1127  	int rc = 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1128  	struct commit cd;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1129  	struct jfs_log *log;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1130  	struct tblock *tblk;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1131  	struct lrd *lrd;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1132  	struct inode *ip;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1133  	struct jfs_inode_info *jfs_ip;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1134  	int k, n;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1135  	ino_t top;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1136  	struct super_block *sb;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1137  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1138  	jfs_info("txCommit, tid = %d, flag = %d", tid, flag);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1139  	/* is read-only file system ? */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1140  	if (isReadOnly(iplist[0])) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  1141  		rc = -EROFS;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1142  		goto TheEnd;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1143  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1144  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1145  	sb = cd.sb = iplist[0]->i_sb;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1146  	cd.tid = tid;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1147  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1148  	if (tid == 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1149  		tid = txBegin(sb, 0);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1150  	tblk = tid_to_tblock(tid);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1151  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1152  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1153  	 * initialize commit structure
^1da177e4c3f41 Linus Torvalds    2005-04-16  1154  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1155  	log = JFS_SBI(sb)->log;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1156  	cd.log = log;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1157  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1158  	/* initialize log record descriptor in commit */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1159  	lrd = &cd.lrd;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1160  	lrd->logtid = cpu_to_le32(tblk->logtid);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1161  	lrd->backchain = 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1162  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1163  	tblk->xflag |= flag;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1164  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1165  	if ((flag & (COMMIT_FORCE | COMMIT_SYNC)) == 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1166  		tblk->xflag |= COMMIT_LAZY;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1167  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1168  	 *	prepare non-journaled objects for commit
^1da177e4c3f41 Linus Torvalds    2005-04-16  1169  	 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1170  	 * flush data pages of non-journaled file
^1da177e4c3f41 Linus Torvalds    2005-04-16  1171  	 * to prevent the file getting non-initialized disk blocks
^1da177e4c3f41 Linus Torvalds    2005-04-16  1172  	 * in case of crash.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1173  	 * (new blocks - )
^1da177e4c3f41 Linus Torvalds    2005-04-16  1174  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1175  	cd.iplist = iplist;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1176  	cd.nip = nip;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1177  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1178  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1179  	 *	acquire transaction lock on (on-disk) inodes
^1da177e4c3f41 Linus Torvalds    2005-04-16  1180  	 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1181  	 * update on-disk inode from in-memory inode
^1da177e4c3f41 Linus Torvalds    2005-04-16  1182  	 * acquiring transaction locks for AFTER records
^1da177e4c3f41 Linus Torvalds    2005-04-16  1183  	 * on the on-disk inode of file object
^1da177e4c3f41 Linus Torvalds    2005-04-16  1184  	 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1185  	 * sort the inodes array by inode number in descending order
^1da177e4c3f41 Linus Torvalds    2005-04-16  1186  	 * to prevent deadlock when acquiring transaction lock
^1da177e4c3f41 Linus Torvalds    2005-04-16  1187  	 * of on-disk inodes on multiple on-disk inode pages by
^1da177e4c3f41 Linus Torvalds    2005-04-16  1188  	 * multiple concurrent transactions
^1da177e4c3f41 Linus Torvalds    2005-04-16  1189  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1190  	for (k = 0; k < cd.nip; k++) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  1191  		top = (cd.iplist[k])->i_ino;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1192  		for (n = k + 1; n < cd.nip; n++) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  1193  			ip = cd.iplist[n];
^1da177e4c3f41 Linus Torvalds    2005-04-16  1194  			if (ip->i_ino > top) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  1195  				top = ip->i_ino;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1196  				cd.iplist[n] = cd.iplist[k];
^1da177e4c3f41 Linus Torvalds    2005-04-16  1197  				cd.iplist[k] = ip;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1198  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1199  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1200  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1201  		ip = cd.iplist[k];
^1da177e4c3f41 Linus Torvalds    2005-04-16  1202  		jfs_ip = JFS_IP(ip);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1203  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1204  		/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1205  		 * BUGBUG - This code has temporarily been removed.  The
^1da177e4c3f41 Linus Torvalds    2005-04-16  1206  		 * intent is to ensure that any file data is written before
^1da177e4c3f41 Linus Torvalds    2005-04-16  1207  		 * the metadata is committed to the journal.  This prevents
^1da177e4c3f41 Linus Torvalds    2005-04-16  1208  		 * uninitialized data from appearing in a file after the
^1da177e4c3f41 Linus Torvalds    2005-04-16  1209  		 * journal has been replayed.  (The uninitialized data
^1da177e4c3f41 Linus Torvalds    2005-04-16  1210  		 * could be sensitive data removed by another user.)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1211  		 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1212  		 * The problem now is that we are holding the IWRITELOCK
^1da177e4c3f41 Linus Torvalds    2005-04-16  1213  		 * on the inode, and calling filemap_fdatawrite on an
^1da177e4c3f41 Linus Torvalds    2005-04-16  1214  		 * unmapped page will cause a deadlock in jfs_get_block.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1215  		 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1216  		 * The long term solution is to pare down the use of
^1da177e4c3f41 Linus Torvalds    2005-04-16  1217  		 * IWRITELOCK.  We are currently holding it too long.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1218  		 * We could also be smarter about which data pages need
^1da177e4c3f41 Linus Torvalds    2005-04-16  1219  		 * to be written before the transaction is committed and
^1da177e4c3f41 Linus Torvalds    2005-04-16  1220  		 * when we don't need to worry about it at all.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1221  		 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1222  		 * if ((!S_ISDIR(ip->i_mode))
28fd129827b00e OGAWA Hirofumi    2006-01-08  1223  		 *    && (tblk->flag & COMMIT_DELETE) == 0)
28fd129827b00e OGAWA Hirofumi    2006-01-08  1224  		 *	filemap_write_and_wait(ip->i_mapping);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1225  		 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1226  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1227  		/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1228  		 * Mark inode as not dirty.  It will still be on the dirty
^1da177e4c3f41 Linus Torvalds    2005-04-16  1229  		 * inode list, but we'll know not to commit it again unless
^1da177e4c3f41 Linus Torvalds    2005-04-16  1230  		 * it gets marked dirty again
^1da177e4c3f41 Linus Torvalds    2005-04-16  1231  		 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1232  		clear_cflag(COMMIT_Dirty, ip);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1233  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1234  		/* inherit anonymous tlock(s) of inode */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1235  		if (jfs_ip->atlhead) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  1236  			lid_to_tlock(jfs_ip->atltail)->next = tblk->next;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1237  			tblk->next = jfs_ip->atlhead;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1238  			if (!tblk->last)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1239  				tblk->last = jfs_ip->atltail;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1240  			jfs_ip->atlhead = jfs_ip->atltail = 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1241  			TXN_LOCK();
^1da177e4c3f41 Linus Torvalds    2005-04-16  1242  			list_del_init(&jfs_ip->anon_inode_list);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1243  			TXN_UNLOCK();
^1da177e4c3f41 Linus Torvalds    2005-04-16  1244  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1245  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1246  		/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1247  		 * acquire transaction lock on on-disk inode page
^1da177e4c3f41 Linus Torvalds    2005-04-16  1248  		 * (become first tlock of the tblk's tlock list)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1249  		 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1250  		if (((rc = diWrite(tid, ip))))
^1da177e4c3f41 Linus Torvalds    2005-04-16  1251  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1252  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1253  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1254  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1255  	 *	write log records from transaction locks
^1da177e4c3f41 Linus Torvalds    2005-04-16  1256  	 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1257  	 * txUpdateMap() resets XAD_NEW in XAD.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1258  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16 @1259  	if ((rc = txLog(log, tblk, &cd)))
^1da177e4c3f41 Linus Torvalds    2005-04-16  1260  		goto TheEnd;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1261  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1262  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1263  	 * Ensure that inode isn't reused before
^1da177e4c3f41 Linus Torvalds    2005-04-16  1264  	 * lazy commit thread finishes processing
^1da177e4c3f41 Linus Torvalds    2005-04-16  1265  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1266  	if (tblk->xflag & COMMIT_DELETE) {
7de9c6ee3ecffd Al Viro           2010-10-23  1267  		ihold(tblk->u.ip);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1268  		/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1269  		 * Avoid a rare deadlock
^1da177e4c3f41 Linus Torvalds    2005-04-16  1270  		 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1271  		 * If the inode is locked, we may be blocked in
^1da177e4c3f41 Linus Torvalds    2005-04-16  1272  		 * jfs_commit_inode.  If so, we don't want the
^1da177e4c3f41 Linus Torvalds    2005-04-16  1273  		 * lazy_commit thread doing the last iput() on the inode
^1da177e4c3f41 Linus Torvalds    2005-04-16  1274  		 * since that may block on the locked inode.  Instead,
^1da177e4c3f41 Linus Torvalds    2005-04-16  1275  		 * commit the transaction synchronously, so the last iput
^1da177e4c3f41 Linus Torvalds    2005-04-16  1276  		 * will be done by the calling thread (or later)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1277  		 */
1c0eeaf5698597 Joern Engel       2007-10-16  1278  		/*
1c0eeaf5698597 Joern Engel       2007-10-16  1279  		 * I believe this code is no longer needed.  Splitting I_LOCK
eaff8079d4f101 Christoph Hellwig 2009-12-17  1280  		 * into two bits, I_NEW and I_SYNC should prevent this
1c0eeaf5698597 Joern Engel       2007-10-16  1281  		 * deadlock as well.  But since I don't have a JFS testload
1c0eeaf5698597 Joern Engel       2007-10-16  1282  		 * to verify this, only a trivial s/I_LOCK/I_SYNC/ was done.
1c0eeaf5698597 Joern Engel       2007-10-16  1283  		 * Joern
1c0eeaf5698597 Joern Engel       2007-10-16  1284  		 */
1c0eeaf5698597 Joern Engel       2007-10-16  1285  		if (tblk->u.ip->i_state & I_SYNC)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1286  			tblk->xflag &= ~COMMIT_LAZY;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1287  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1288  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1289  	ASSERT((!(tblk->xflag & COMMIT_DELETE)) ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  1290  	       ((tblk->u.ip->i_nlink == 0) &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  1291  		!test_cflag(COMMIT_Nolink, tblk->u.ip)));
^1da177e4c3f41 Linus Torvalds    2005-04-16  1292  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1293  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1294  	 *	write COMMIT log record
^1da177e4c3f41 Linus Torvalds    2005-04-16  1295  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1296  	lrd->type = cpu_to_le16(LOG_COMMIT);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1297  	lrd->length = 0;
3c2c2262859900 Dave Kleikamp     2011-06-20  1298  	lmLog(log, tblk, lrd, NULL);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1299  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1300  	lmGroupCommit(log, tblk);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1301  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1302  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1303  	 *	- transaction is now committed -
^1da177e4c3f41 Linus Torvalds    2005-04-16  1304  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1305  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1306  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1307  	 * force pages in careful update
^1da177e4c3f41 Linus Torvalds    2005-04-16  1308  	 * (imap addressing structure update)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1309  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1310  	if (flag & COMMIT_FORCE)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1311  		txForce(tblk);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1312  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1313  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1314  	 *	update allocation map.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1315  	 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1316  	 * update inode allocation map and inode:
^1da177e4c3f41 Linus Torvalds    2005-04-16  1317  	 * free pager lock on memory object of inode if any.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1318  	 * update block allocation map.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1319  	 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1320  	 * txUpdateMap() resets XAD_NEW in XAD.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1321  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1322  	if (tblk->xflag & COMMIT_FORCE)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1323  		txUpdateMap(tblk);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1324  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1325  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1326  	 *	free transaction locks and pageout/free pages
^1da177e4c3f41 Linus Torvalds    2005-04-16  1327  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1328  	txRelease(tblk);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1329  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1330  	if ((tblk->flag & tblkGC_LAZY) == 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1331  		txUnlock(tblk);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1332  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1333  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1334  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1335  	 *	reset in-memory object state
^1da177e4c3f41 Linus Torvalds    2005-04-16  1336  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1337  	for (k = 0; k < cd.nip; k++) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  1338  		ip = cd.iplist[k];
^1da177e4c3f41 Linus Torvalds    2005-04-16  1339  		jfs_ip = JFS_IP(ip);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1340  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1341  		/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1342  		 * reset in-memory inode state
^1da177e4c3f41 Linus Torvalds    2005-04-16  1343  		 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1344  		jfs_ip->bxflag = 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1345  		jfs_ip->blid = 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1346  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1347  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1348        out:
^1da177e4c3f41 Linus Torvalds    2005-04-16  1349  	if (rc != 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1350  		txAbort(tid, 1);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1351  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1352        TheEnd:
^1da177e4c3f41 Linus Torvalds    2005-04-16  1353  	jfs_info("txCommit: tid = %d, returning %d", tid, rc);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1354  	return rc;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1355  }
^1da177e4c3f41 Linus Torvalds    2005-04-16  1356  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--pf9I7BMVVzbSWLtt
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--pf9I7BMVVzbSWLtt--

