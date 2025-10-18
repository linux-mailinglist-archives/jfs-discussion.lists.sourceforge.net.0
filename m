Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD3ABEE695
	for <lists+jfs-discussion@lfdr.de>; Sun, 19 Oct 2025 16:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ji5JbLYTLIqQdv9kq63qcoNj+d+kVrS1cuCO830Mgyg=; b=kvcRK37smacyUhs6y3XNsW8CDh
	/dEjLXxbXFzcQtxXqM/Hrah53TbqjfoyKtTgbqht/fc669xN5/LB6QwVktNfJR21BkK75FKcdTLZA
	EXg5yBUErluXnN8sAYejpQDUTbdEDLf2MG8KxSLDU4xOWqsBDl1WPbxBGkOsW+2J/ah8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vAUCu-0005sT-6G;
	Sun, 19 Oct 2025 14:16:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david.hunter.linux@gmail.com>) id 1vACTU-0000rH-P7
 for jfs-discussion@lists.sourceforge.net;
 Sat, 18 Oct 2025 19:20:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LccgdfPMDjRMzewD+obCTFVg3400OuQ7Xk5cUE3OXck=; b=FIudjLWZ9e+Rt83ShWk7ZXMJgt
 gUXz0MZknRgPvTRnuJ1p+clomyjj3ZRkWefd8SzeLNjmCXPibLOeQlzpqtw7nCS56WFAxsHH33D6a
 8NgylNNcPV7DkAsIMTVfY7Wugo8Yo1dhb8/l1xG2G7OUhVTf6icuFB6HfJS+JHTft3HE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LccgdfPMDjRMzewD+obCTFVg3400OuQ7Xk5cUE3OXck=; b=j85QIpSXc0KBdSmUQMsw7AiIwH
 MIN24E0/SnsR2zIEy9v8o2F6gVo6qgcQyodsg3OXblWZ1aAvCdE0ndKCqrcrtCJIGeM3X43Kk4B0w
 RvZV8dG4yk0vkypMKRp8zjtJBgwzQQBOqDPsADXBc67H49YVxfcMEq9Ka3NqDrEUKE2o=;
Received: from mail-yx1-f45.google.com ([74.125.224.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vACTM-0000XR-Ca for jfs-discussion@lists.sourceforge.net;
 Sat, 18 Oct 2025 19:20:12 +0000
Received: by mail-yx1-f45.google.com with SMTP id
 956f58d0204a3-63e1591183bso2182080d50.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 18 Oct 2025 12:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760815201; x=1761420001; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LccgdfPMDjRMzewD+obCTFVg3400OuQ7Xk5cUE3OXck=;
 b=PPqbcLTrCkpiewfH4n9YFFo00YZTmER89HfRqjEUGSFuXkxP8D3tCRvK7l6/nPNAdk
 nbk8O5ZdkOEkM2thk0doS1ehjf6feip7Y4BEwo3pdjqBs/1beUaUlzPOgTe2P2uug39i
 tjotmyY6kvCu3gbdu6XTnD5S6k5guQ76pJ0NtunFlBV7YXT5HFlXi3lS6rlvTjM6EzVq
 tg7nisCtvjNSv8K0mV4XkGQuVjPUgBl7cW05f1aOhwMQKY4ZbwV0KUGoHQnr9XonbZGx
 lg8ZNnHc2ANDAJujuB/07fS2VMRG77HTKd2EMSX1SbPro2OpdlhTdn0eaLl0jRLsFkz2
 2b7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760815201; x=1761420001;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LccgdfPMDjRMzewD+obCTFVg3400OuQ7Xk5cUE3OXck=;
 b=vYHpcUmrGviy7w+3XEi0whQmfUVDvK4CltaEBmyU+k0Oa8g3iCCwXaX+6BZMGgA3Ux
 0hJTXw6XZm+0Wqmh1sL1kFag/TjzzJ8CB5bG3gQcA0z/BTPRV51zfPyNBp1bEbTwZK6o
 /xIUhrcoxSM2drDGXJnnXd28fIAZ3vgQ5gSa6Aw8GElMRkU1iUvw37w57E9JqsolXDyA
 vikNOrAuztqglSLlVL/cr0VVMLSv1a90oX0LWuqrR6cYP0pPPuEHOISZxRRo2Bf+I6YZ
 kpVsfoDf4+KIp1CsbM+9G7RakmpnRHRBvm/WvGnLpqgV+V8p/2yJgzOxW93xw5fylmmK
 EgKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVlssAW+BjcePqtvfbguyyL9P6v4jSp+XAWBLjc3GkwOK+iNT78bkvj7rEj1WBbb/uob8epCDv1s98lz4AUXg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwFsSLdbORaJgviUJvKOXzxrGZ3q1jDM2EJ8HR8eHnDIzTzXPa8
 n0dPqs+PEt03YBChCtAoS+t7Z6ktclClW3huLussC4hEJvGLmfMFXcrA
X-Gm-Gg: ASbGncvebo8gGgsutgKQs4bIVewQG4X3UnIdjEwU8lLHDa4NYNj3QOTEjG/7RJa9Tw6
 I+CWwXjjyRIbEmCN4M9k1DI+wxDfIWJgFHK1QWQJilSdl/ScFi46fVPxped/+yxjNe2rFP+jZvE
 50X0o0BGxQzgLAW3ziedmn66dBHBM/ESudHtwOdT2dFl4HncALiJn9AmUJ4gxLQ1ZIQMN+Yh9Lc
 ft635MwL4mxNzMgXwescdZ3IQEL6KvOUufqGVDY3bFAdPiff9JD3HZpDDr0KG6c8LI5lVmkU3l8
 XbmVxqx8DMEuOlFymaB9n+a7MlHEGNkvtjT+bsudI25GfCCUsoKsHRiv+YXHYGoZ9TA3U0CziCu
 1zp5RpDihd+a+Ll/PuQF5r/UEOxyiWPAG3U9IEI7vxiNikhkVlienExIGEwwj6F38kilZx20ezu
 Psy0yK1isJPRMlZglkcQ==
X-Google-Smtp-Source: AGHT+IFrXjWjoq2yIbSbSD5lPCn7X75dshizr8DHk3oHjFx0ElM9TMjMaMZW4gd177H72hiQ/ipCeQ==
X-Received: by 2002:a05:690e:1504:b0:633:b6b5:ef2c with SMTP id
 956f58d0204a3-63e1619ef8emr6624550d50.27.1760815201550; 
 Sat, 18 Oct 2025 12:20:01 -0700 (PDT)
Received: from [192.168.201.155] ([76.200.76.117])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-63e31926201sm256249d50.3.2025.10.18.12.20.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Oct 2025 12:20:01 -0700 (PDT)
Message-ID: <c2e85681-7ce8-43e3-ba08-63f8b854c8c7@gmail.com>
Date: Sat, 18 Oct 2025 15:19:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sukrut Heroorkar <hsukrut3@gmail.com>, Dave Kleikamp <shaggy@kernel.org>, 
 Rand Deeb <rand.sec96@gmail.com>, Edward Adam Davis <eadavis@qq.com>,
 Ghanshyam Agrawal <ghanshyam1898@gmail.com>,
 Nihar Chaithanya <niharchaithanya@gmail.com>,
 Vasiliy Kovalev <kovalev@altlinux.org>,
 Arnaud Lecomte <contact@arnaud-lcm.com>,
 "open list:JFS FILESYSTEM" <jfs-discussion@lists.sourceforge.net>,
 open list <linux-kernel@vger.kernel.org>
References: <20251018053029.226506-1-hsukrut3@gmail.com>
Content-Language: en-US
In-Reply-To: <20251018053029.226506-1-hsukrut3@gmail.com>
X-Spam-Score: 3.8 (+++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/18/25 01:30,
 Sukrut Heroorkar wrote: > Tested-by:
 syzbot+4b717071f1eecb2972df@syzkaller.appspotmail.com
 Hey Sukrut, Did you do any other testing other than syzbot testing? 
 Content analysis details:   (3.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 4.0 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?74.125.224.45>]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [david.hunter.linux(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [74.125.224.45 listed in wl.mailspike.net]
X-Headers-End: 1vACTM-0000XR-Ca
X-Mailman-Approved-At: Sun, 19 Oct 2025 14:16:21 +0000
Subject: Re: [Jfs-discussion] [PATCH] jfs: validate budmin to prevent
 shift-out-of-bounds in dbAllocAG()
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
From: David Hunter via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: David Hunter <david.hunter.linux@gmail.com>
Cc: skhan@linux.foundation.org,
 syzbot+4b717071f1eecb2972df@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/18/25 01:30, Sukrut Heroorkar wrote:
> Tested-by: syzbot+4b717071f1eecb2972df@syzkaller.appspotmail.com


Hey Sukrut,

Did you do any other testing other than syzbot testing?

Thanks,
David Hunter


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
