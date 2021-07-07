<<<<<<< HEAD
Return-Path: <linux-kselftest-owner@vger.kernel.org>
X-Original-To: lists+linux-kselftest@lfdr.de
Delivered-To: lists+linux-kselftest@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
<<<<<<< HEAD
<<<<<<< HEAD
	by mail.lfdr.de (Postfix) with ESMTP id B64F23BA3BE
	for <lists+linux-kselftest@lfdr.de>; Fri,  2 Jul 2021 19:45:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230127AbhGBRrb (ORCPT <rfc822;lists+linux-kselftest@lfdr.de>);
        Fri, 2 Jul 2021 13:47:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229812AbhGBRrb (ORCPT
        <rfc822;linux-kselftest@vger.kernel.org>);
        Fri, 2 Jul 2021 13:47:31 -0400
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com [IPv6:2607:f8b0:4864:20::d2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16683C061764
        for <linux-kselftest@vger.kernel.org>; Fri,  2 Jul 2021 10:44:58 -0700 (PDT)
Received: by mail-io1-xd2c.google.com with SMTP id a6so12642808ioe.0
        for <linux-kselftest@vger.kernel.org>; Fri, 02 Jul 2021 10:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language;
        bh=KhUFjFc4PNJROyTJtUEcXg7AdBP9ZTbnL0e8ZbVJ8lM=;
        b=CRz5GvzJLoCYC5MJLb6yJac7CxQx1sUivQPd6A8txHOqsyGJcWTjTKBa9rCei5yWlP
         bsIt/2n3mhElerkUm7H23SR077aCtSwzqGMKJf/OHWhj6tq3shCWRd9S3TQsWgue1TkF
         e5agPx1QIrI0tMqC0nRk/6l6dd38d/a9ZJSKA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language;
        bh=KhUFjFc4PNJROyTJtUEcXg7AdBP9ZTbnL0e8ZbVJ8lM=;
        b=PA3HgLiHoU9GGA49lUvl78lrAm41p9euXWGn6qmXXX+rMv7So9uGu0LJaTo8dvP3Sv
         ViYUegaL2tzJDlmEIVipGG6s327ez/NdCFFFErzXi70l5e/QfnnWPdtxyygqeKNUgnN7
         /6xmfutfcdCAutZjxlqVaVWAhq0PH/eobmaySMLeC6yoT5dxJAlBPOEIMwZNDa1SCaS3
         loCnAK0WBg8pWur9crITwjVnXogwDup803QhTmRNTGLJJh9+mW6Hl9V8RXG7S+gR1tHH
         GMCrH1ecrt/O+buiODaBvRcb53Esa0UfEBCUYMNifE9wxT9tkbIQLV1PEcBdGuZ1UExh
         4nbA==
X-Gm-Message-State: AOAM533AaNuwsZDKT9Pi8ZSewhWzVJsPR373n3B6PMVPnikUbY/itz9n
        VgnwxjXzS3a+96ozVrbiogvA8tym5a+n+Q==
X-Google-Smtp-Source: ABdhPJwSYtsS5he367KBuTdGGSIEbGSapp0wIAAD2ytchN5SO2URxMlEgCd0AS1q/ppxlsqKfYQxHg==
X-Received: by 2002:a02:3781:: with SMTP id r123mr579229jar.26.1625247897348;
        Fri, 02 Jul 2021 10:44:57 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net. [24.9.64.241])
        by smtp.gmail.com with ESMTPSA id i1sm1991932ilq.10.2021.07.02.10.44.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jul 2021 10:44:56 -0700 (PDT)
To:     Linus Torvalds <torvalds@linux-foundation.org>
Cc:     Shuah Khan <skhan@linuxfoundation.org>,
        linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
From:   Shuah Khan <skhan@linuxfoundation.org>
Subject: [GIT PULL] Kselftest update for Linux 5.14-rc1
Message-ID: <933f7ca8-71ae-6af3-64bb-b43795a98290@linuxfoundation.org>
Date:   Fri, 2 Jul 2021 11:44:55 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------E64F399F8330183219BA06E5"
Content-Language: en-US
=======
	by mail.lfdr.de (Postfix) with ESMTP id 5E5FD3C8E71
	for <lists+linux-rdma@lfdr.de>; Wed, 14 Jul 2021 21:45:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238463AbhGNTrv (ORCPT <rfc822;lists+linux-rdma@lfdr.de>);
        Wed, 14 Jul 2021 15:47:51 -0400
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32]:62552 "EHLO
        mx0a-00069f02.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237893AbhGNTqr (ORCPT
        <rfc822;linux-rdma@vger.kernel.org>);
        Wed, 14 Jul 2021 15:46:47 -0400
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
        by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16EJfZZj000623;
        Wed, 14 Jul 2021 19:43:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=S+0B1b0TvKBjukXCqkq6oqH1sZf4imlj/0UjXBesYok=;
 b=WDrRqTO9Gbb+LfNooO8LbRxrMQpL5AfYDewzLYaR/NuftffWDLcXBypUQgTD1OHzqdk/
 O0qaurt7cG0YxCGkomIGAgNrloudsBinSMlIojRDx3+5Jzws2vzycYY0AwONzqwJjjDQ
 RlxPzxzp6RFUklkbubUmuCLVT8+QED9pNkyd1/s/MSGtTXvV3xwfTTdeni+5nk8gej4W
 Ur/B4r8wF7QakdqnKPh5lyDeC79G+4tF3o/2VXT6B89ifA7Sk7hShBz1wHBA35M4QFKW
 brr+uKXaoNF9wllQeUZpGTuYEy0yd2T2PM7/IusOp/DwlFjik5IAdCapEUCPv7dNWPyg 1A== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=S+0B1b0TvKBjukXCqkq6oqH1sZf4imlj/0UjXBesYok=;
 b=f0YeaW2BdUPyW8R62iRwEso9EnkBO5tkLchJi6NfhhLTTnF/6wA9/O4cSaJEIWZB5oKQ
 1+dQUnG1/S3tTeDE5ekVpJsvLr/BhvEQuUMTh2Vg4hDeGa0ehg2LpRW7RfrSFPPphiCH
 I6C8HQTNMrtcBhhgzg2Sx+Vb36c7iP3gI01M2P3G3WnZpSoC3CVi2PcL7OAk3bZ8x3+T
 imWp74ApCAF842VD+hyWSYjE35MI9yQaxy/Sd5p/iQ75LD+pJHAKwVuh5f8aFAK4qvNL
 ihV6LNZ15fJqpF1AQTklGObq9iAV7KkzbbWiAAB6cP0yYbjz+XDva+F727KDssrE1wNO OQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
        by mx0b-00069f02.pphosted.com with ESMTP id 39suk8sf0s-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 14 Jul 2021 19:43:53 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
        by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16EJexWZ023348;
        Wed, 14 Jul 2021 19:43:52 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
        by aserp3030.oracle.com with ESMTP id 39qyd1cfbj-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 14 Jul 2021 19:43:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jvPMv0FUKLD3ic8DzyibWFd8WK0Lq3zEZ5LIHC1EnJQJS0eouSOrZou16to4htw2+x/GiqXgOfplO71DK8ITxFJm2g77eC6ZlJtPzO/6a4Z7OygS0sVhPOcR0aL1U7w17L3YvOQlM53XHgrFF2s1OUrRTTbCNVqmlI075X+bFbZaN38Ef624Bc6f3ZwCdcnSa4dr3PNC83G9u5dImHyOeX8PqExyrQ4UF3/VkG2qzfZWXdF6idUBQz2SGt2W4CZ2K20HB1QHHoqTDgWz8aUFhdmxUxlKZlEOK12HERj/ImUnHH+/BZK8ED90cgXL2xgAU1co4t4HOO3pOwtuCw4fwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S+0B1b0TvKBjukXCqkq6oqH1sZf4imlj/0UjXBesYok=;
 b=Y3XcCHFpmL5BjlvTWmKt6t0OQJ69KXJjBA8j/pqn5neM2RbjBhhIHnKUbR752ySw+OGBsQ379pXd5DosZDZHw7gjp8/iSRjv3HDH+WiQ7/LLiZDzY8TLYSHiNN2BB2sNa673FG8omwVpaPiLKm+LbBArXxIHHsAHNZ21GeWkvl8wTe6r+G5FUaTg7U6HQQ1WSTBS1ladHGp57Diy3fRAXMzn6piRKl6e9tBy2BxGHtNubP2QxFtDwo1SPDOZVydl0mVD90RGkntc34yEDjSKNW7p2qw4Yr1aLX6sdIe4Ds0vkwZqb57SR9IGSnEcFwtmEvvvNrBqOpt9X2nO6e5AIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S+0B1b0TvKBjukXCqkq6oqH1sZf4imlj/0UjXBesYok=;
 b=AI5lnqGZucEE1efNGRd0jgxRwot8AtfmEX4d0QwvivDk7/lhCbShmDKB2hy033gg6SqUnkBEtA+jx5miUgNaU9OIdmdZFPDNKXo/A17B1rE+2kTlelR80uXRe3YRM0LArRiUj7ZeSvZoEBURnC/sKoXUOCP6XpDHkhqSagcCjlA=
Received: from SJ0PR10MB4688.namprd10.prod.outlook.com (2603:10b6:a03:2db::24)
 by BY5PR10MB4147.namprd10.prod.outlook.com (2603:10b6:a03:20e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21; Wed, 14 Jul
 2021 19:43:50 +0000
Received: from SJ0PR10MB4688.namprd10.prod.outlook.com
 ([fe80::9dee:998a:9134:5fcb]) by SJ0PR10MB4688.namprd10.prod.outlook.com
 ([fe80::9dee:998a:9134:5fcb%3]) with mapi id 15.20.4331.022; Wed, 14 Jul 2021
 19:43:49 +0000
From:   Chuck Lever III <chuck.lever@oracle.com>
To:     "Marciniszyn, Mike" <mike.marciniszyn@cornelisnetworks.com>
CC:     "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>
Subject: Re: NFS dmesg errors in 5.14-rc1
Thread-Topic: NFS dmesg errors in 5.14-rc1
Thread-Index: Add4zo3mZX7NdJahRUuk4Wkzu3kNtwAGgJsA
Date:   Wed, 14 Jul 2021 19:43:49 +0000
Message-ID: <9875E135-B13D-45C1-8FEE-44215C961C92@oracle.com>
References: <CH0PR01MB7153D36F6E35AF2239C763C0F2139@CH0PR01MB7153.prod.exchangelabs.com>
In-Reply-To: <CH0PR01MB7153D36F6E35AF2239C763C0F2139@CH0PR01MB7153.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: cornelisnetworks.com; dkim=none (message not signed)
 header.d=none;cornelisnetworks.com; dmarc=none action=none
 header.from=oracle.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 211d24fe-ed79-4196-3f25-08d946ffb3a1
x-ms-traffictypediagnostic: BY5PR10MB4147:
x-microsoft-antispam-prvs: <BY5PR10MB4147A0A02C9A01FF8A0DB40293139@BY5PR10MB4147.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FI16G5obNZ5SXst/PCOJZLVlIvGsDKT6WSHDiwsnYrNi05x9sfrRG7/SkD2456ItNlGWe41gIcjFHd7+IhBeXLNkl/oiJMuD+moRdQ6pjNU7qHnvTG5yvEkTiEiU8h0tvSVwQc74KmKDfG7I+NCRLZ10zlnC1Yl+BedrPpsHH1AgTbOK9okDJCOKKeHHCBrMyomFLbLA71qcHO6RfSLUu57NtKMLlh1VOCqekzKp29OPw3vuxTO78p7cAj1oq4s7ebIGSjz4hfkQFvxaexx7stxxMetDwWNvcvadgpa7VvCIKjGAG03NYcDDaMyGKUENfD/YGhUl2H2nItNxt7tbVkacP7b/rvu1sAj90o2YZ/VY7BF4gP/QyDAwj7PnSdCihKHzwiRvGD+GWg98Ip6TXNzhjNA+LJkf5GUJbsSFr8UJqg5G2D86kRUq70tNDQyvca/MMeqGA7V04u6oD+Vucv1Yg06eEi4FAh83697wyvAH8YNKQL0wic1HebNbuGgrXg9VWPKXjdKx8CzbMTfmY3jBc2e1lb5WzWzlNOXybO3F8IDS+Ibkqo80Jr8k6qC0VgOFYrRo8YY1QDsr2sCoStn9i2klMLeYUQm+rM57PRYlA2wpEKFCys5wWM2O9YSo1R62aOyVlBP+I2tTaBsJx04jy4u5AEXOE/ZkHhmKwOoSkeM4glcCjHcJOtbraw+tGTAghQ4tdjP8qj/blrD4aJUiomwI7wFTvuDj0ofDHBo=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4688.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(366004)(376002)(136003)(346002)(396003)(316002)(122000001)(2906002)(38100700002)(6916009)(5660300002)(53546011)(6506007)(8936002)(6512007)(45080400002)(6486002)(478600001)(36756003)(33656002)(2616005)(26005)(66946007)(83380400001)(76116006)(91956017)(66446008)(71200400001)(186003)(8676002)(64756008)(66476007)(4326008)(86362001)(66556008)(38070700004)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1Q9LoSW27BHo9v+bx3m3ymuSPcn0nKRyzWVoeX1nv6poG5/rq2CJ29CoNigl?=
 =?us-ascii?Q?556fbMybphUCkS3EzMHWFietJSgcfIRCZ/e5L1N6q+MyBJjmUPzz9eUx8qS/?=
 =?us-ascii?Q?PJdNoRS+37nU+WWJ3wU/musLZCRK/vWIq2I22j69yvgHyxHerXIIQpNFl9HM?=
 =?us-ascii?Q?V73rBs0HrZVvz/iVI7VUFo2GcHrY4tb2HX1Apq4LOO2K2q9QMRQJbDcARXYp?=
 =?us-ascii?Q?5T5JFOmDXQO45+7YUAxR091hVsO0VFf0VdhK6Gk77y61PeogWJXPiIt/C9ED?=
 =?us-ascii?Q?GXBLUr9zWQWCnKDgWdl7sF00+UUGPNv7F1eQ4OcYDr8i0t051XY956Zkzek4?=
 =?us-ascii?Q?9a9ffp39Io9c0oWeTWj61qD4qg4RKyht6D6gzqtQNdUZHeULwmy7G1wljnFh?=
 =?us-ascii?Q?NeAWAEh/49c31ELeScCZSTw9Kx3fr/2l2Lu4d378dL/gga6FxI8quH5O86EZ?=
 =?us-ascii?Q?I4ZmFb7KeWL+oMu3KiyYOnUG24iz25Ay2TgVXIy0JOPDULRVFmhBlSMNHCZX?=
 =?us-ascii?Q?AkCBD7ohHi5eVK3XGyp46jIjr0ZzFTKjWT0Vq4mjfzqOcxWPjUYSyqjwThCA?=
 =?us-ascii?Q?t0kIGZ3RmfX7rgs0vd1MWV+QnVyAj4lPkpNsSQfti+HQgCxzRS6k2rQItWQ+?=
 =?us-ascii?Q?0QdXhZtpfhl5Hy5V3N/VyX5ZEwhf2WYNpFwgtPgqsBHSSgzjAdl2QZpMwvba?=
 =?us-ascii?Q?PT7RaaAMWx14+56dtGd4eC1t8gTHbhfGCduq62rVX50dxYurDLeoM7Lz0VML?=
 =?us-ascii?Q?3bETBKePGk0Ul2K5KV0tEEJk1DGxwHzxLqzW6v9QZ7ioXIxCAu8vy0WjiDB2?=
 =?us-ascii?Q?Lytu3KfMax2/Jf8ERv01GI3dvdsS0b9oBRbWTPCmLfgI6XXyr57afoAWM3/g?=
 =?us-ascii?Q?CsBCHtKQCeUeSW5/n25sVSUqm1uUp4k1HyzaeSdBUSKE7R5gfauxRF9xVgcx?=
 =?us-ascii?Q?Jz9Cnefi5Eb0xtEo4ngfxwOcaABFrMTUWWTbIRLNDDpIrGubJhlr4w3XjPKV?=
 =?us-ascii?Q?vu+QfMAsAFkwxWRrpSrHJZH9xvJ/Dmbq3p/A2jH8621O4ES2aj2m8PPHqKE8?=
 =?us-ascii?Q?gKZL1A7XVv45VwqPoNJT/6hGEgGvJ0u5tmbVHrGC2QtcCUSgF9LZTruUFAQ/?=
 =?us-ascii?Q?ko26sMA+DCBWHpNK0tjCCbd/3t1/wpuNFiYfmd75UIAft0G/lKUJULgjrz8B?=
 =?us-ascii?Q?ptuTQaAo5mhJPo1x4ejrmubxrRQRQdt8/h4OU5hfatagkMFGKq1Syr3N9x30?=
 =?us-ascii?Q?axv1Kdshe5t05UNFi2I1P6RB+ElJ8uPmOaC9eTXY7y0PLu8bFxGsMfwIKaAo?=
 =?us-ascii?Q?lnzQDcVHEiS0UQB1Nw1KUffz?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8A66F7B0EFEF5642BA7B90491A5C734C@namprd10.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4688.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 211d24fe-ed79-4196-3f25-08d946ffb3a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2021 19:43:49.3710
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v9TU4Sqs6WIvOr1vuPolkf7YKqCY6oUxrc4Gyo/UdMPZuB8vVoob4Bf7zvHHph8Ogbv+83uoRQNcevNZpdl5Kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4147
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10045 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxlogscore=999
 adultscore=0 malwarescore=0 bulkscore=0 mlxscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107140116
X-Proofpoint-ORIG-GUID: zaVWdn9ufedOv7dvpTWCReXxME7lpNYt
X-Proofpoint-GUID: zaVWdn9ufedOv7dvpTWCReXxME7lpNYt
>>>>>>> 0700123e07a7... Re: NFS dmesg errors in 5.14-rc1
=======
	by mail.lfdr.de (Postfix) with ESMTP id 31B4C3BF08F
	for <lists+linux-kernel@lfdr.de>; Wed,  7 Jul 2021 21:58:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233094AbhGGUBe (ORCPT <rfc822;lists+linux-kernel@lfdr.de>);
        Wed, 7 Jul 2021 16:01:34 -0400
Received: from mail.kernel.org ([198.145.29.99]:38032 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230296AbhGGUBc (ORCPT <rfc822;linux-kernel@vger.kernel.org>);
        Wed, 7 Jul 2021 16:01:32 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id C0DE261CC2;
        Wed,  7 Jul 2021 19:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1625687931;
        bh=K6SJBq8axw4PnEQMuifWYXHlsiKcVtzF3zIRp1rgNiM=;
        h=Date:From:To:Cc:Subject:From;
        b=Q1Qnn5WVNaZpO3l9oefa9G1ot72DNnltpLUhpi2fdbixeTcQXeCg2XzPmWeBP75GP
         1uRGeCCdbFPa2Q0Qlst2T0g0RTyv42B+AS3Xm2v7ZDaT7J+XdX7qFFwFivmk2ZHGoN
         xhqpnbcEpnabqjt7j9aJPTtWcMs0yFv1/Gi/pwv8cw1KwtvQ9CpPO9yocflVEJyIIL
         6UZytxxVIOPirul/3pZPgKxSgYpLA/iiqHRycCZ0XyNqQ/Z8/IeuV0/wbn1tKgirvi
         fMBNDJjDR1Fn5jq/i9ZTdiCMRyqpCnkcLoCc50ink5JfJE60kE3yHhiImu2bKysq/u
         IPi4OLUpFHLZQ==
Date:   Wed, 7 Jul 2021 12:58:50 -0700
From:   Jaegeuk Kim <jaegeuk@kernel.org>
To:     Linus Torvalds <torvalds@linux-foundation.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux F2FS Dev Mailing List 
        <linux-f2fs-devel@lists.sourceforge.net>
Subject: [GIT PULL] f2fs for 5.14-rc1
Message-ID: <YOYHejl3CgABOnhP@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
>>>>>>> 4c5cc31332e1... [GIT PULL] f2fs for 5.14-rc1
Precedence: bulk
List-ID: <linux-kselftest.vger.kernel.org>
X-Mailing-List: linux-kselftest@vger.kernel.org

<<<<<<< HEAD
This is a multi-part message in MIME format.
--------------E64F399F8330183219BA06E5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Linus,

Please pull the following Kselftest update for Linux 5.14-rc1.

This Kselftest update for Linux 5.14-rc1 consists of fixes to

existing tests and framework:


-- migrate sgx test to kselftest harness

-- add new test cases to sgx test

-- ftrace test fix event-no-pid on 1-core machine

-- splice test adjust for handler fallback removal

diff is attached.

Apologies if this message appears to have double spacing. My email
client is at fault - I am trying to figure out what changed.

thanks,
-- Shuah

----------------------------------------------------------------
The following changes since commit d07f6ca923ea0927a1024dfccafc5b53b61cfecc:



   Linux 5.13-rc2 (2021-05-16 15:27:44 -0700)



are available in the Git repository at:



   git://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest 
tags/linux-kselftest-next-5.14-rc1



for you to fetch changes up to 4896df9d53ae5521f3ce83751e828ad70bc65c80:



   selftests/sgx: remove checks for file execute permissions (2021-06-23 
18:38:04 -0600)



----------------------------------------------------------------

linux-kselftest-next-5.14-rc1



This Kselftest update for Linux 5.14-rc1 consists of fixes to

existing tests and framework:



-- migrate sgx test to kselftest harness

-- add new test cases to sgx test

-- ftrace test fix event-no-pid on 1-core machine

-- splice test adjust for handler fallback removal



----------------------------------------------------------------

Dave Hansen (1):

       selftests/sgx: remove checks for file execute permissions



Jarkko Sakkinen (5):

       selftests/sgx: Rename 'eenter' and 'sgx_call_vdso'

       selftests/sgx: Migrate to kselftest harness

       selftests/sgx: Dump enclave memory map

       selftests/sgx: Add EXPECT_EEXIT() macro

       selftests/sgx: Refine the test enclave to have storage



Kees Cook (3):

       selftests/tls: Add {} to avoid static checker warning

       selftests: splice: Adjust for handler fallback removal

       selftests: lib.mk: Also install "config" and "settings"



Krzysztof Kozlowski (1):

       selftests/ftrace: fix event-no-pid on 1-core machine



Po-Hsu Lin (1):

       selftests: timers: rtcpie: skip test if default RTC device does 
not exist



Xiaochen Shen (1):

       selftests/resctrl: Fix incorrect parsing of option "-t"



  .../selftests/ftrace/test.d/event/event-no-pid.tc  |   7 +

  tools/testing/selftests/lib.mk                     |   1 +

  tools/testing/selftests/net/tls.c                  |   3 +-

  tools/testing/selftests/resctrl/README             |   2 +-

  tools/testing/selftests/resctrl/resctrl_tests.c    |   4 +-

  tools/testing/selftests/sgx/call.S                 |   6 +-

  tools/testing/selftests/sgx/defines.h              |  10 +

  tools/testing/selftests/sgx/load.c                 |  19 +-

  tools/testing/selftests/sgx/main.c                 | 239 
+++++++++++++--------

  tools/testing/selftests/sgx/main.h                 |   4 +-

  tools/testing/selftests/sgx/test_encl.c            |  19 +-

  tools/testing/selftests/sgx/test_encl.lds          |   3 +-

  .../testing/selftests/splice/short_splice_read.sh  | 119 ++++++++--

  tools/testing/selftests/timers/rtcpie.c            |  10 +-

  14 files changed, 308 insertions(+), 138 deletions(-)


----------------------------------------------------------------

--------------E64F399F8330183219BA06E5
Content-Type: text/x-patch; charset=UTF-8;
 name="linux-kselftest-next-5.14-rc1.diff"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="linux-kselftest-next-5.14-rc1.diff"

diff --git a/tools/testing/selftests/ftrace/test.d/event/event-no-pid.tc b/tools/testing/selftests/ftrace/test.d/event/event-no-pid.tc
index e6eb78f0b954..9933ed24f901 100644
--- a/tools/testing/selftests/ftrace/test.d/event/event-no-pid.tc
+++ b/tools/testing/selftests/ftrace/test.d/event/event-no-pid.tc
@@ -57,6 +57,10 @@ enable_events() {
     echo 1 > tracing_on
 }
 
+other_task() {
+    sleep .001 || usleep 1 || sleep 1
+}
+
 echo 0 > options/event-fork
 
 do_reset
@@ -94,6 +98,9 @@ child=$!
 echo "child = $child"
 wait $child
 
+# Be sure some other events will happen for small systems (e.g. 1 core)
+other_task
+
 echo 0 > tracing_on
 
 cnt=`count_pid $mypid`
diff --git a/tools/testing/selftests/lib.mk b/tools/testing/selftests/lib.mk
index 0af84ad48aa7..fa2ac0e56b43 100644
--- a/tools/testing/selftests/lib.mk
+++ b/tools/testing/selftests/lib.mk
@@ -100,6 +100,7 @@ define INSTALL_RULE
 	$(eval INSTALL_LIST = $(TEST_CUSTOM_PROGS)) $(INSTALL_SINGLE_RULE)
 	$(eval INSTALL_LIST = $(TEST_GEN_PROGS_EXTENDED)) $(INSTALL_SINGLE_RULE)
 	$(eval INSTALL_LIST = $(TEST_GEN_FILES)) $(INSTALL_SINGLE_RULE)
+	$(eval INSTALL_LIST = $(wildcard config settings)) $(INSTALL_SINGLE_RULE)
 endef
 
 install: all
diff --git a/tools/testing/selftests/net/tls.c b/tools/testing/selftests/net/tls.c
index 426d07875a48..7119f8eb823b 100644
--- a/tools/testing/selftests/net/tls.c
+++ b/tools/testing/selftests/net/tls.c
@@ -418,8 +418,9 @@ TEST_F(tls, sendmsg_large)
 		EXPECT_EQ(sendmsg(self->cfd, &msg, 0), send_len);
 	}
 
-	while (recvs++ < sends)
+	while (recvs++ < sends) {
 		EXPECT_NE(recv(self->fd, mem, send_len, 0), -1);
+	}
 
 	free(mem);
 }
diff --git a/tools/testing/selftests/resctrl/README b/tools/testing/selftests/resctrl/README
index 4b36b25b6ac0..3d2bbd4fa3aa 100644
--- a/tools/testing/selftests/resctrl/README
+++ b/tools/testing/selftests/resctrl/README
@@ -47,7 +47,7 @@ Parameter '-h' shows usage information.
 
 usage: resctrl_tests [-h] [-b "benchmark_cmd [options]"] [-t test list] [-n no_of_bits]
         -b benchmark_cmd [options]: run specified benchmark for MBM, MBA and CMT default benchmark is builtin fill_buf
-        -t test list: run tests specified in the test list, e.g. -t mbm, mba, cmt, cat
+        -t test list: run tests specified in the test list, e.g. -t mbm,mba,cmt,cat
         -n no_of_bits: run cache tests using specified no of bits in cache bit mask
         -p cpu_no: specify CPU number to run the test. 1 is default
         -h: help
diff --git a/tools/testing/selftests/resctrl/resctrl_tests.c b/tools/testing/selftests/resctrl/resctrl_tests.c
index f51b5fc066a3..973f09a66e1e 100644
--- a/tools/testing/selftests/resctrl/resctrl_tests.c
+++ b/tools/testing/selftests/resctrl/resctrl_tests.c
@@ -40,7 +40,7 @@ static void cmd_help(void)
 	printf("\t-b benchmark_cmd [options]: run specified benchmark for MBM, MBA and CMT\n");
 	printf("\t   default benchmark is builtin fill_buf\n");
 	printf("\t-t test list: run tests specified in the test list, ");
-	printf("e.g. -t mbm, mba, cmt, cat\n");
+	printf("e.g. -t mbm,mba,cmt,cat\n");
 	printf("\t-n no_of_bits: run cache tests using specified no of bits in cache bit mask\n");
 	printf("\t-p cpu_no: specify CPU number to run the test. 1 is default\n");
 	printf("\t-h: help\n");
@@ -173,7 +173,7 @@ int main(int argc, char **argv)
 
 					return -1;
 				}
-				token = strtok(NULL, ":\t");
+				token = strtok(NULL, ",");
 			}
 			break;
 		case 'p':
diff --git a/tools/testing/selftests/sgx/call.S b/tools/testing/selftests/sgx/call.S
index 4ecadc7490f4..b09a25890f3b 100644
--- a/tools/testing/selftests/sgx/call.S
+++ b/tools/testing/selftests/sgx/call.S
@@ -5,8 +5,8 @@
 
 	.text
 
-	.global sgx_call_vdso
-sgx_call_vdso:
+	.global sgx_enter_enclave
+sgx_enter_enclave:
 	.cfi_startproc
 	push	%r15
 	.cfi_adjust_cfa_offset	8
@@ -27,7 +27,7 @@ sgx_call_vdso:
 	.cfi_adjust_cfa_offset	8
 	push	0x38(%rsp)
 	.cfi_adjust_cfa_offset	8
-	call	*eenter(%rip)
+	call	*vdso_sgx_enter_enclave(%rip)
 	add	$0x10, %rsp
 	.cfi_adjust_cfa_offset	-0x10
 	pop	%rbx
diff --git a/tools/testing/selftests/sgx/defines.h b/tools/testing/selftests/sgx/defines.h
index 0bd73428d2f3..f88562afcaa0 100644
--- a/tools/testing/selftests/sgx/defines.h
+++ b/tools/testing/selftests/sgx/defines.h
@@ -18,4 +18,14 @@
 #include "../../../../arch/x86/include/asm/enclu.h"
 #include "../../../../arch/x86/include/uapi/asm/sgx.h"
 
+enum encl_op_type {
+	ENCL_OP_PUT,
+	ENCL_OP_GET,
+};
+
+struct encl_op {
+	uint64_t type;
+	uint64_t buffer;
+};
+
 #endif /* DEFINES_H */
diff --git a/tools/testing/selftests/sgx/load.c b/tools/testing/selftests/sgx/load.c
index f441ac34b4d4..3ebe5d1fe337 100644
--- a/tools/testing/selftests/sgx/load.c
+++ b/tools/testing/selftests/sgx/load.c
@@ -150,16 +150,6 @@ bool encl_load(const char *path, struct encl *encl)
 		goto err;
 	}
 
-	/*
-	 * This just checks if the /dev file has these permission
-	 * bits set.  It does not check that the current user is
-	 * the owner or in the owning group.
-	 */
-	if (!(sb.st_mode & (S_IXUSR | S_IXGRP | S_IXOTH))) {
-		fprintf(stderr, "no execute permissions on device file %s\n", device_path);
-		goto err;
-	}
-
 	ptr = mmap(NULL, PAGE_SIZE, PROT_READ, MAP_SHARED, fd, 0);
 	if (ptr == (void *)-1) {
 		perror("mmap for read");
@@ -169,13 +159,13 @@ bool encl_load(const char *path, struct encl *encl)
 
 #define ERR_MSG \
 "mmap() succeeded for PROT_READ, but failed for PROT_EXEC.\n" \
-" Check that current user has execute permissions on %s and \n" \
-" that /dev does not have noexec set: mount | grep \"/dev .*noexec\"\n" \
+" Check that /dev does not have noexec set:\n" \
+" \tmount | grep \"/dev .*noexec\"\n" \
 " If so, remount it executable: mount -o remount,exec /dev\n\n"
 
 	ptr = mmap(NULL, PAGE_SIZE, PROT_EXEC, MAP_SHARED, fd, 0);
 	if (ptr == (void *)-1) {
-		fprintf(stderr, ERR_MSG, device_path);
+		fprintf(stderr, ERR_MSG);
 		goto err;
 	}
 	munmap(ptr, PAGE_SIZE);
@@ -239,9 +229,6 @@ bool encl_load(const char *path, struct encl *encl)
 		seg->offset = (phdr->p_offset & PAGE_MASK) - src_offset;
 		seg->size = (phdr->p_filesz + PAGE_SIZE - 1) & PAGE_MASK;
 
-		printf("0x%016lx 0x%016lx 0x%02x\n", seg->offset, seg->size,
-		       seg->prot);
-
 		j++;
 	}
 
diff --git a/tools/testing/selftests/sgx/main.c b/tools/testing/selftests/sgx/main.c
index d304a4044eb9..e252015e0c15 100644
--- a/tools/testing/selftests/sgx/main.c
+++ b/tools/testing/selftests/sgx/main.c
@@ -17,11 +17,11 @@
 #include <sys/types.h>
 #include <sys/auxv.h>
 #include "defines.h"
+#include "../kselftest_harness.h"
 #include "main.h"
-#include "../kselftest.h"
 
 static const uint64_t MAGIC = 0x1122334455667788ULL;
-vdso_sgx_enter_enclave_t eenter;
+vdso_sgx_enter_enclave_t vdso_sgx_enter_enclave;
 
 struct vdso_symtab {
 	Elf64_Sym *elf_symtab;
@@ -107,85 +107,51 @@ static Elf64_Sym *vdso_symtab_get(struct vdso_symtab *symtab, const char *name)
 	return NULL;
 }
 
-bool report_results(struct sgx_enclave_run *run, int ret, uint64_t result,
-		  const char *test)
-{
-	bool valid = true;
-
-	if (ret) {
-		printf("FAIL: %s() returned: %d\n", test, ret);
-		valid = false;
-	}
-
-	if (run->function != EEXIT) {
-		printf("FAIL: %s() function, expected: %u, got: %u\n", test, EEXIT,
-		       run->function);
-		valid = false;
-	}
-
-	if (result != MAGIC) {
-		printf("FAIL: %s(), expected: 0x%lx, got: 0x%lx\n", test, MAGIC,
-		       result);
-		valid = false;
-	}
-
-	if (run->user_data) {
-		printf("FAIL: %s() user data, expected: 0x0, got: 0x%llx\n",
-		       test, run->user_data);
-		valid = false;
-	}
-
-	return valid;
-}
-
-static int user_handler(long rdi, long rsi, long rdx, long ursp, long r8, long r9,
-			struct sgx_enclave_run *run)
-{
-	run->user_data = 0;
-	return 0;
-}
+FIXTURE(enclave) {
+	struct encl encl;
+	struct sgx_enclave_run run;
+};
 
-int main(int argc, char *argv[])
+FIXTURE_SETUP(enclave)
 {
-	struct sgx_enclave_run run;
+	Elf64_Sym *sgx_enter_enclave_sym = NULL;
 	struct vdso_symtab symtab;
-	Elf64_Sym *eenter_sym;
-	uint64_t result = 0;
-	struct encl encl;
+	struct encl_segment *seg;
+	char maps_line[256];
+	FILE *maps_file;
 	unsigned int i;
 	void *addr;
-	int ret;
 
-	memset(&run, 0, sizeof(run));
-
-	if (!encl_load("test_encl.elf", &encl)) {
-		encl_delete(&encl);
+	if (!encl_load("test_encl.elf", &self->encl)) {
+		encl_delete(&self->encl);
 		ksft_exit_skip("cannot load enclaves\n");
 	}
 
-	if (!encl_measure(&encl))
+	for (i = 0; i < self->encl.nr_segments; i++) {
+		seg = &self->encl.segment_tbl[i];
+
+		TH_LOG("0x%016lx 0x%016lx 0x%02x", seg->offset, seg->size, seg->prot);
+	}
+
+	if (!encl_measure(&self->encl))
 		goto err;
 
-	if (!encl_build(&encl))
+	if (!encl_build(&self->encl))
 		goto err;
 
 	/*
 	 * An enclave consumer only must do this.
 	 */
-	for (i = 0; i < encl.nr_segments; i++) {
-		struct encl_segment *seg = &encl.segment_tbl[i];
-
-		addr = mmap((void *)encl.encl_base + seg->offset, seg->size,
-			    seg->prot, MAP_SHARED | MAP_FIXED, encl.fd, 0);
-		if (addr == MAP_FAILED) {
-			perror("mmap() segment failed");
-			exit(KSFT_FAIL);
-		}
+	for (i = 0; i < self->encl.nr_segments; i++) {
+		struct encl_segment *seg = &self->encl.segment_tbl[i];
+
+		addr = mmap((void *)self->encl.encl_base + seg->offset, seg->size,
+			    seg->prot, MAP_SHARED | MAP_FIXED, self->encl.fd, 0);
+		EXPECT_NE(addr, MAP_FAILED);
+		if (addr == MAP_FAILED)
+			goto err;
 	}
 
-	memset(&run, 0, sizeof(run));
-	run.tcs = encl.encl_base;
-
 	/* Get vDSO base address */
 	addr = (void *)getauxval(AT_SYSINFO_EHDR);
 	if (!addr)
@@ -194,37 +160,134 @@ int main(int argc, char *argv[])
 	if (!vdso_get_symtab(addr, &symtab))
 		goto err;
 
-	eenter_sym = vdso_symtab_get(&symtab, "__vdso_sgx_enter_enclave");
-	if (!eenter_sym)
+	sgx_enter_enclave_sym = vdso_symtab_get(&symtab, "__vdso_sgx_enter_enclave");
+	if (!sgx_enter_enclave_sym)
 		goto err;
 
-	eenter = addr + eenter_sym->st_value;
-
-	ret = sgx_call_vdso((void *)&MAGIC, &result, 0, EENTER, NULL, NULL, &run);
-	if (!report_results(&run, ret, result, "sgx_call_vdso"))
-		goto err;
+	vdso_sgx_enter_enclave = addr + sgx_enter_enclave_sym->st_value;
 
+	memset(&self->run, 0, sizeof(self->run));
+	self->run.tcs = self->encl.encl_base;
 
-	/* Invoke the vDSO directly. */
-	result = 0;
-	ret = eenter((unsigned long)&MAGIC, (unsigned long)&result, 0, EENTER,
-		     0, 0, &run);
-	if (!report_results(&run, ret, result, "eenter"))
-		goto err;
+	maps_file = fopen("/proc/self/maps", "r");
+	if (maps_file != NULL)  {
+		while (fgets(maps_line, sizeof(maps_line), maps_file) != NULL) {
+			maps_line[strlen(maps_line) - 1] = '\0';
 
-	/* And with an exit handler. */
-	run.user_handler = (__u64)user_handler;
-	run.user_data = 0xdeadbeef;
-	ret = eenter((unsigned long)&MAGIC, (unsigned long)&result, 0, EENTER,
-		     0, 0, &run);
-	if (!report_results(&run, ret, result, "user_handler"))
-		goto err;
+			if (strstr(maps_line, "/dev/sgx_enclave"))
+				TH_LOG("%s", maps_line);
+		}
 
-	printf("SUCCESS\n");
-	encl_delete(&encl);
-	exit(KSFT_PASS);
+		fclose(maps_file);
+	}
 
 err:
-	encl_delete(&encl);
-	exit(KSFT_FAIL);
+	if (!sgx_enter_enclave_sym)
+		encl_delete(&self->encl);
+
+	ASSERT_NE(sgx_enter_enclave_sym, NULL);
+}
+
+FIXTURE_TEARDOWN(enclave)
+{
+	encl_delete(&self->encl);
+}
+
+#define ENCL_CALL(op, run, clobbered) \
+	({ \
+		int ret; \
+		if ((clobbered)) \
+			ret = vdso_sgx_enter_enclave((unsigned long)(op), 0, 0, \
+						     EENTER, 0, 0, (run)); \
+		else \
+			ret = sgx_enter_enclave((void *)(op), NULL, 0, EENTER, NULL, NULL, \
+						(run)); \
+		ret; \
+	})
+
+#define EXPECT_EEXIT(run) \
+	do { \
+		EXPECT_EQ((run)->function, EEXIT); \
+		if ((run)->function != EEXIT) \
+			TH_LOG("0x%02x 0x%02x 0x%016llx", (run)->exception_vector, \
+			       (run)->exception_error_code, (run)->exception_addr); \
+	} while (0)
+
+TEST_F(enclave, unclobbered_vdso)
+{
+	struct encl_op op;
+
+	op.type = ENCL_OP_PUT;
+	op.buffer = MAGIC;
+
+	EXPECT_EQ(ENCL_CALL(&op, &self->run, false), 0);
+
+	EXPECT_EEXIT(&self->run);
+	EXPECT_EQ(self->run.user_data, 0);
+
+	op.type = ENCL_OP_GET;
+	op.buffer = 0;
+
+	EXPECT_EQ(ENCL_CALL(&op, &self->run, false), 0);
+
+	EXPECT_EQ(op.buffer, MAGIC);
+	EXPECT_EEXIT(&self->run);
+	EXPECT_EQ(self->run.user_data, 0);
+}
+
+TEST_F(enclave, clobbered_vdso)
+{
+	struct encl_op op;
+
+	op.type = ENCL_OP_PUT;
+	op.buffer = MAGIC;
+
+	EXPECT_EQ(ENCL_CALL(&op, &self->run, true), 0);
+
+	EXPECT_EEXIT(&self->run);
+	EXPECT_EQ(self->run.user_data, 0);
+
+	op.type = ENCL_OP_GET;
+	op.buffer = 0;
+
+	EXPECT_EQ(ENCL_CALL(&op, &self->run, true), 0);
+
+	EXPECT_EQ(op.buffer, MAGIC);
+	EXPECT_EEXIT(&self->run);
+	EXPECT_EQ(self->run.user_data, 0);
 }
+
+static int test_handler(long rdi, long rsi, long rdx, long ursp, long r8, long r9,
+			struct sgx_enclave_run *run)
+{
+	run->user_data = 0;
+
+	return 0;
+}
+
+TEST_F(enclave, clobbered_vdso_and_user_function)
+{
+	struct encl_op op;
+
+	self->run.user_handler = (__u64)test_handler;
+	self->run.user_data = 0xdeadbeef;
+
+	op.type = ENCL_OP_PUT;
+	op.buffer = MAGIC;
+
+	EXPECT_EQ(ENCL_CALL(&op, &self->run, true), 0);
+
+	EXPECT_EEXIT(&self->run);
+	EXPECT_EQ(self->run.user_data, 0);
+
+	op.type = ENCL_OP_GET;
+	op.buffer = 0;
+
+	EXPECT_EQ(ENCL_CALL(&op, &self->run, true), 0);
+
+	EXPECT_EQ(op.buffer, MAGIC);
+	EXPECT_EEXIT(&self->run);
+	EXPECT_EQ(self->run.user_data, 0);
+}
+
+TEST_HARNESS_MAIN
diff --git a/tools/testing/selftests/sgx/main.h b/tools/testing/selftests/sgx/main.h
index 67211a708f04..68672fd86cf9 100644
--- a/tools/testing/selftests/sgx/main.h
+++ b/tools/testing/selftests/sgx/main.h
@@ -35,7 +35,7 @@ bool encl_load(const char *path, struct encl *encl);
 bool encl_measure(struct encl *encl);
 bool encl_build(struct encl *encl);
 
-int sgx_call_vdso(void *rdi, void *rsi, long rdx, u32 function, void *r8, void *r9,
-		  struct sgx_enclave_run *run);
+int sgx_enter_enclave(void *rdi, void *rsi, long rdx, u32 function, void *r8, void *r9,
+		      struct sgx_enclave_run *run);
 
 #endif /* MAIN_H */
diff --git a/tools/testing/selftests/sgx/test_encl.c b/tools/testing/selftests/sgx/test_encl.c
index cf25b5dc1e03..734ea52f9924 100644
--- a/tools/testing/selftests/sgx/test_encl.c
+++ b/tools/testing/selftests/sgx/test_encl.c
@@ -4,6 +4,8 @@
 #include <stddef.h>
 #include "defines.h"
 
+static uint8_t encl_buffer[8192] = { 1 };
+
 static void *memcpy(void *dest, const void *src, size_t n)
 {
 	size_t i;
@@ -14,7 +16,20 @@ static void *memcpy(void *dest, const void *src, size_t n)
 	return dest;
 }
 
-void encl_body(void *rdi, void *rsi)
+void encl_body(void *rdi,  void *rsi)
 {
-	memcpy(rsi, rdi, 8);
+	struct encl_op *op = (struct encl_op *)rdi;
+
+	switch (op->type) {
+	case ENCL_OP_PUT:
+		memcpy(&encl_buffer[0], &op->buffer, 8);
+		break;
+
+	case ENCL_OP_GET:
+		memcpy(&op->buffer, &encl_buffer[0], 8);
+		break;
+
+	default:
+		break;
+	}
 }
diff --git a/tools/testing/selftests/sgx/test_encl.lds b/tools/testing/selftests/sgx/test_encl.lds
index 0fbbda7e665e..a1ec64f7d91f 100644
--- a/tools/testing/selftests/sgx/test_encl.lds
+++ b/tools/testing/selftests/sgx/test_encl.lds
@@ -18,9 +18,10 @@ SECTIONS
 	.text : {
 		*(.text*)
 		*(.rodata*)
+		FILL(0xDEADBEEF);
+		. = ALIGN(4096);
 	} : text
 
-	. = ALIGN(4096);
 	.data : {
 		*(.data*)
 	} : data
diff --git a/tools/testing/selftests/splice/short_splice_read.sh b/tools/testing/selftests/splice/short_splice_read.sh
index 7810d3589d9a..22b6c8910b18 100755
--- a/tools/testing/selftests/splice/short_splice_read.sh
+++ b/tools/testing/selftests/splice/short_splice_read.sh
@@ -1,21 +1,87 @@
 #!/bin/sh
 # SPDX-License-Identifier: GPL-2.0
+#
+# Test for mishandling of splice() on pseudofilesystems, which should catch
+# bugs like 11990a5bd7e5 ("module: Correctly truncate sysfs sections output")
+#
+# Since splice fallback was removed as part of the set_fs() rework, many of these
+# tests expect to fail now. See https://lore.kernel.org/lkml/202009181443.C2179FB@keescook/
 set -e
 
+DIR=$(dirname "$0")
+
 ret=0
 
+expect_success()
+{
+	title="$1"
+	shift
+
+	echo "" >&2
+	echo "$title ..." >&2
+
+	set +e
+	"$@"
+	rc=$?
+	set -e
+
+	case "$rc" in
+	0)
+		echo "ok: $title succeeded" >&2
+		;;
+	1)
+		echo "FAIL: $title should work" >&2
+		ret=$(( ret + 1 ))
+		;;
+	*)
+		echo "FAIL: something else went wrong" >&2
+		ret=$(( ret + 1 ))
+		;;
+	esac
+}
+
+expect_failure()
+{
+	title="$1"
+	shift
+
+	echo "" >&2
+	echo "$title ..." >&2
+
+	set +e
+	"$@"
+	rc=$?
+	set -e
+
+	case "$rc" in
+	0)
+		echo "FAIL: $title unexpectedly worked" >&2
+		ret=$(( ret + 1 ))
+		;;
+	1)
+		echo "ok: $title correctly failed" >&2
+		;;
+	*)
+		echo "FAIL: something else went wrong" >&2
+		ret=$(( ret + 1 ))
+		;;
+	esac
+}
+
 do_splice()
 {
 	filename="$1"
 	bytes="$2"
 	expected="$3"
+	report="$4"
 
-	out=$(./splice_read "$filename" "$bytes" | cat)
+	out=$("$DIR"/splice_read "$filename" "$bytes" | cat)
 	if [ "$out" = "$expected" ] ; then
-		echo "ok: $filename $bytes"
+		echo "      matched $report" >&2
+		return 0
 	else
-		echo "FAIL: $filename $bytes"
-		ret=1
+		echo "      no match: '$out' vs $report" >&2
+		return 1
 	fi
 }
 
@@ -23,34 +89,45 @@ test_splice()
 {
 	filename="$1"
 
+	echo "  checking $filename ..." >&2
+
 	full=$(cat "$filename")
+	rc=$?
+	if [ $rc -ne 0 ] ; then
+		return 2
+	fi
+
 	two=$(echo "$full" | grep -m1 . | cut -c-2)
 
 	# Make sure full splice has the same contents as a standard read.
-	do_splice "$filename" 4096 "$full"
+	echo "    splicing 4096 bytes ..." >&2
+	if ! do_splice "$filename" 4096 "$full" "full read" ; then
+		return 1
+	fi
 
 	# Make sure a partial splice see the first two characters.
-	do_splice "$filename" 2 "$two"
+	echo "    splicing 2 bytes ..." >&2
+	if ! do_splice "$filename" 2 "$two" "'$two'" ; then
+		return 1
+	fi
+
+	return 0
 }
 
-# proc_single_open(), seq_read()
-test_splice /proc/$$/limits
-# special open, seq_read()
-test_splice /proc/$$/comm
+### /proc/$pid/ has no splice interface; these should all fail.
+expect_failure "proc_single_open(), seq_read() splice" test_splice /proc/$$/limits
+expect_failure "special open(), seq_read() splice" test_splice /proc/$$/comm
 
-# proc_handler, proc_dointvec_minmax
-test_splice /proc/sys/fs/nr_open
-# proc_handler, proc_dostring
-test_splice /proc/sys/kernel/modprobe
-# proc_handler, special read
-test_splice /proc/sys/kernel/version
+### /proc/sys/ has a splice interface; these should all succeed.
+expect_success "proc_handler: proc_dointvec_minmax() splice" test_splice /proc/sys/fs/nr_open
+expect_success "proc_handler: proc_dostring() splice" test_splice /proc/sys/kernel/modprobe
+expect_success "proc_handler: special read splice" test_splice /proc/sys/kernel/version
 
+### /sys/ has no splice interface; these should all fail.
 if ! [ -d /sys/module/test_module/sections ] ; then
-	modprobe test_module
+	expect_success "test_module kernel module load" modprobe test_module
 fi
-# kernfs, attr
-test_splice /sys/module/test_module/coresize
-# kernfs, binattr
-test_splice /sys/module/test_module/sections/.init.text
+expect_failure "kernfs attr splice" test_splice /sys/module/test_module/coresize
+expect_failure "kernfs binattr splice" test_splice /sys/module/test_module/sections/.init.text
 
 exit $ret
diff --git a/tools/testing/selftests/timers/rtcpie.c b/tools/testing/selftests/timers/rtcpie.c
index 47b5bad1b393..4ef2184f1558 100644
--- a/tools/testing/selftests/timers/rtcpie.c
+++ b/tools/testing/selftests/timers/rtcpie.c
@@ -18,6 +18,8 @@
 #include <stdlib.h>
 #include <errno.h>
 
+#include "../kselftest.h"
+
 /*
  * This expects the new RTC class driver framework, working with
  * clocks that will often not be clones of what the PC-AT had.
@@ -35,8 +37,14 @@ int main(int argc, char **argv)
 	switch (argc) {
 	case 2:
 		rtc = argv[1];
-		/* FALLTHROUGH */
+		break;
 	case 1:
+		fd = open(default_rtc, O_RDONLY);
+		if (fd == -1) {
+			printf("Default RTC %s does not exist. Test Skipped!\n", default_rtc);
+			exit(KSFT_SKIP);
+		}
+		close(fd);
 		break;
 	default:
 		fprintf(stderr, "usage:  rtctest [rtcdev] [d]\n");

--------------E64F399F8330183219BA06E5--
=======
Return-Path: <dri-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+dri-devel@lfdr.de
Delivered-To: lists+dri-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4213BF431
	for <lists+dri-devel@lfdr.de>; Thu,  8 Jul 2021 05:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 014906E20B;
	Thu,  8 Jul 2021 03:07:04 +0000 (UTC)
X-Original-To: dri-devel@lists.freedesktop.org
Delivered-To: dri-devel@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D434C6E209
 for <dri-devel@lists.freedesktop.org>; Thu,  8 Jul 2021 03:07:02 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id v1so6316037edt.6
 for <dri-devel@lists.freedesktop.org>; Wed, 07 Jul 2021 20:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=ZiuonARrCQCukLkSMESCo/Rbo7DU/jQm+OMfOC/COxM=;
 b=egHoAayTFmxrme9MvsR30sXf7Y7GkgCy5StLlW7ZFeFTbSIDQScSU+RZjT9DgIoowx
 lOskgZlMr3AvPga2DnwXEER2gjQ0solhYHU6EBfJf04Cv2gjOqiMbGvsg7rnHMr6grkP
 0iKju8Z9aOIzvJlS9zV/JE4QuyePYDd4Ksw5t0qHWcac2XsthdfUiz295ME/VsdNuh0g
 jNQRg6Al7ztNBy+J/Ycti4SDoJw4lxb4Q839qrqLj4dOEbdQBbZS96Va3X2xG/C7gRQe
 BO/UQxiQRrRpl3Nc3/t9tKevSGMTtkCaAAWdvDHnGlJmsiApxQRXaxeDjKk4cvk+Tf3T
 /JPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=ZiuonARrCQCukLkSMESCo/Rbo7DU/jQm+OMfOC/COxM=;
 b=nBDFuKF5tHcjoQOkB5KyrF1tjgAOq4jRmK5OXe8An5jZ2Rje7nup28/Z1WJ8jKQZiz
 Fe94uGx8v+83PgHsTckxFRt2ZrgjlzshYUw14Qw8ri8Gg8z5E/oFZN55HEcF7QVP/Iq0
 Pe1hdKLcsZLT8Yjxm/e+FY3jUPvwdcmcdaKhR+UhobbL99Qbpc87hC3Ok/2eFuUEoSvk
 sn3j9iklj8HDDRsrL687dkt7gFMrxx6uA/zQn6wEqG5rY0IlFjBpQaxPzT+1gx6KlJ8R
 f+RSXUa+JEvPbyJbjuVZwce7sfkO5xnvNQD/ZCfbU3o3JEdpTYaXnL/xg+vpcPwOyoqP
 cY3w==
X-Gm-Message-State: AOAM531lZRARd7qq7FPAwlLNVsd2jdhsku83JCJYw7ULSXyjPhOvX/gg
 kaomQtqjCce78Q9Kdls1qShotoI+Rq8tsh/oiZQ=
X-Google-Smtp-Source: ABdhPJxPiWzK772tRugCsz+v05N2B2Ignw/EGE7XCeUTrAT8JcQXovWJ4tm/orZEFxIS3sCYKCm3Bh5PLW4d3mr1uJs=
X-Received: by 2002:a05:6402:1d07:: with SMTP id
 dg7mr34778270edb.298.1625713621401; 
 Wed, 07 Jul 2021 20:07:01 -0700 (PDT)
MIME-Version: 1.0
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 8 Jul 2021 13:06:50 +1000
Message-ID: <CAPM=9txowZc9-MVfS_uvASJMnE4Okt4B8KHCyk3nC9x=-a+w3w@mail.gmail.com>
Subject: [git pull] drm fixes for 5.14-rc1
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-BeenThere: dri-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Direct Rendering Infrastructure - Development
 <dri-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>

Hi Linus,

Some fixes for rc1 that came in the past weeks, mainly a bunch of
amdgpu fixes, some i915 and the rest are misc around the place. I'm
sending this a bit early so some more stuff may show up, but I'll
probably take tomorrow off.

Dave.

drm-next-2021-07-08-1:
drm fixes for 5.14-rc1

dma-buf:
- doc fixes

amdgpu:
- Misc Navi fixes
- Powergating fix
- Yellow Carp updates
- Beige Goby updates
- S0ix fix
- Revert overlay validation fix
- GPU reset fix for DC
- PPC64 fix
- Add new dimgrey cavefish DID
- RAS fix
- TTM fixes

amdkfd:
- SVM fixes

radeon:
- Fix missing drm_gem_object_put in error path
- NULL ptr deref fix

i915:
- display DP VSC fix
- DG1 display fix
- IRQ fixes
- IRQ demidlayering

gma500:
- bo leaks in error paths fixed
The following changes since commit 8a02ea42bc1d4c448caf1bab0e05899dad503f74=
:

  Merge tag 'drm-intel-next-fixes-2021-06-29' of
git://anongit.freedesktop.org/drm/drm-intel into drm-next (2021-06-30
15:42:05 +1000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm tags/drm-next-2021-07-08-1

for you to fetch changes up to 21c355b09711e95f8f0e7c1890b343c6cd350042:

  Merge tag 'drm-misc-next-fixes-2021-07-01' of
git://anongit.freedesktop.org/drm/drm-misc into drm-next (2021-07-08
11:17:32 +1000)

----------------------------------------------------------------
drm fixes for 5.14-rc1

dma-buf:
- doc fixes

amdgpu:
- Misc Navi fixes
- Powergating fix
- Yellow Carp updates
- Beige Goby updates
- S0ix fix
- Revert overlay validation fix
- GPU reset fix for DC
- PPC64 fix
- Add new dimgrey cavefish DID
- RAS fix
- TTM fixes
=======
Hi Mike-

> On Jul 14, 2021, at 12:40 PM, Marciniszyn, Mike <mike.marciniszyn@corneli=
snetworks.com> wrote:
>=20
> Chuck,
>=20
> We are now seeing this in the first RC:
>=20
>=20
> [31868.644165] ------------[ cut here ]------------
> [31868.650059] failed to drain recv queue: -22
> [31868.655191] WARNING: CPU: 32 PID: 559 at drivers/infiniband/core/verbs=
.c:2738 __ib_drain_rq+0x163/0x1a0 [ib_core]
> [31868.657234] ------------[ cut here ]------------
> [31868.667133] Modules linked in: nfsv3
> [31868.672832] failed to drain send queue: -22
> [31868.677279]  nfs_acl rpcsec_gss_krb5 auth_rpcgss nfsv4 dns_resolver nf=
s lockd grace fscache netfs tcp_diag udp_diag raw_diag inet_diag rfkill ib_=
isert iscsi_target_mod target_core_mod rpcrdma ib_iser rdma_ucm opa_vnic rd=
ma_cm ib_umad libiscsi ib_ipoib scsi_transport_iscsi ib_cm iw_cm sunrpc hfi=
1 mgag200 intel_rapl_msr intel_rapl_common drm_kms_helper sb_edac syscopyar=
ea rdmavt x86_pkg_temp_thermal sysfillrect intel_powerclamp ipmi_si ib_uver=
bs sysimgblt coretemp fb_sys_fops cec ipmi_devintf drm crct10dif_pclmul crc=
32_pclmul iTCO_wdt iTCO_vendor_support ghash_clmulni_intel ib_core mei_me r=
apl intel_cstate mei lpc_ich mxm_wmi i2c_i801
> [31868.682425] WARNING: CPU: 65 PID: 608575 at drivers/infiniband/core/ve=
rbs.c:2705 __ib_drain_sq+0x14d/0x190 [ib_core]

The above warnings tell us ib_modify_qp() is returning -EINVAL,
twice in a row. ib_drain_qp() is not able to put the QP in the
ERR state, so it didn't try to post the drain sentinels.


> On the same tests, the mount command fails with a connection refused...
>=20
> Any ideas on this?
>=20
> 5.13.1 (the first 5.13.y release) tests fine.

There is exactly one change to the client components in
net/sunrpc/xprtrdma/ in v5.14-rc1:

  e86be3a04bc4 ("SUNRPC: More fixes for backlog congestion")

Based on these two facts, my first inclination is that this is
a problem with the verbs provider, not with rpcrdma.ko.

Let's collect a little more information. Enable tracing on
your client before trying your test again:

 # trace-cmd record -e sunrpc -e rpcrdma -e rdma_core -e rdma_cma

When the test fails, ^C the trace-cmd, and have a look at the
trace.dat file (and/or, send it to me).


--
Chuck Lever


>>>>>>> 0700123e07a7... Re: NFS dmesg errors in 5.14-rc1

amdkfd:
- SVM fixes

radeon:
- Fix missing drm_gem_object_put in error path
- NULL ptr deref fix

i915:
- display DP VSC fix
- DG1 display fix
- IRQ fixes
- IRQ demidlayering

gma500:
- bo leaks in error paths fixed

----------------------------------------------------------------
Aaron Liu (2):
      drm/amdgpu: enable tmz on yellow carp
      drm/amdgpu: enable sdma0 tmz for Raven/Renoir(V2)

Alex Deucher (2):
      drm/amdgpu/display: drop unused variable
      drm/amdgpu: add new dimgrey cavefish DID

Alex Sierra (11):
      drm/amdkfd: inc counter on child ranges with xnack off
      drm/amdkfd: device pgmap owner at the svm migrate init
      drm/amdkfd: add owner ref param to get hmm pages
      drm/amdkfd: set owner ref to svm range prefault
      drm/amdgpu: get owner ref in validate and map
      drm/amdkfd: use hmm range fault to get both domain pfns
      drm/amdkfd: classify and map mixed svm range pages in GPU
      drm/amdkfd: skip invalid pages during migrations
      drm/amdkfd: skip migration for pages already in VRAM
      drm/amdkfd: add invalid pages debug at vram migration
      drm/amdkfd: Maintain svm_bo reference in page->zone_device_data

Chengming Gui (1):
      drm/amd/amdgpu: enable gpu recovery for beige_goby

Chengzhe Liu (1):
      drm/amdgpu: Power down VCN and JPEG before disabling SMU features

Darren Powell (1):
      amdgpu/pm: remove code duplication in show_power_cap calls

Dave Airlie (3):
      Merge tag 'amd-drm-next-5.14-2021-07-01' of
https://gitlab.freedesktop.org/agd5f/linux into drm-next
      Merge tag 'drm-intel-next-fixes-2021-07-07' of
git://anongit.freedesktop.org/drm/drm-intel into drm-next
      Merge tag 'drm-misc-next-fixes-2021-07-01' of
git://anongit.freedesktop.org/drm/drm-misc into drm-next

Evan Quan (7):
      drm/amdgpu: correct tcp harvest setting
      drm/amdgpu: fix Navi1x tcp power gating hang when issuing
lightweight invalidaiton
      drm/amdgpu: fix NAK-G generation during PCI-e link width switch
      drm/amdgpu: fix the hang caused by PCIe link width switch
      drm/amdgpu: correct clock gating settings on feature unsupported
      drm/amdgpu: update GFX MGCG settings
      drm/amdgpu: update HDP LS settings

Guchun Chen (2):
      drm/amd/display: fix incorrrect valid irq check
      drm/amd/display: fix null pointer access in gpu reset

Huang Rui (1):
      drm/amdgpu: move apu flags initialization to the start of device init

Jing Xiangfeng (2):
      drm/gma500: Add the missed drm_gem_object_put() in
psb_user_framebuffer_create()
      drm/radeon: Add the missed drm_gem_object_put() in
radeon_user_framebuffer_create()

Joseph Greathouse (1):
      drm/amdgpu: Update NV SIMD-per-CU to 2

Jos=C3=A9 Roberto de Souza (1):
      drm/i915/display/dg1: Correctly map DPLLs during state readout

Kees Cook (1):
      drm/i915/display: Do not zero past infoframes.vsc

Michal Suchanek (1):
      drm/amdgpu/dc: Really fix DCN3.1 Makefile for PPC64

Mikel Rychliski (1):
      drm/radeon: Fix NULL dereference when updating memory stats

Mukul Joshi (1):
      drm/amdgpu: Conditionally reset SDMA RAS error counts

Nicholas Kazlauskas (1):
      drm/amd/display: Extend DMUB diagnostic logging to DCN3.1

Nirmoy Das (1):
      drm/amdgpu: return early for non-TTM_PL_TT type BOs

Oak Zeng (1):
      drm/amdgpu: Set ttm caching flags during bo allocation

<<<<<<< HEAD
Philip Yang (4):
      drm/amdkfd: add helper function for kfd sysfs create
      drm/amdkfd: fix sysfs kobj leak
      drm/amdkfd: add sysfs counters for vm fault and migration
      drm/amdkfd: implement counters for vm fault and migration

Randy Dunlap (1):
      <linux/dma-resv.h>: correct a function name in kernel-doc

Reka Norman (1):
      drm/amd/display: Respect CONFIG_FRAME_WARN=3D0 in dml Makefile

Rodrigo Siqueira (1):
      Revert "drm/amd/display: Fix overlay validation by considering cursor=
s"

Shyam Sundar S K (1):
      drm/amd/pm: skip PrepareMp1ForUnload message in s0ix

Thomas Zimmermann (2):
      drm/i915: Use the correct IRQ during resume
      drm/i915: Drop all references to DRM IRQ midlayer

Tiezhu Yang (1):
      drm/radeon: Call radeon_suspend_kms() in radeon_pci_shutdown()
for Loongson64

Veerabadhran Gopalakrishnan (1):
      amdgpu/nv.c - Added codec query for Beige Goby

Zhan Liu (1):
      drm/amd/display: Enabling eDP no power sequencing with DAL feature ma=
sk

 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c         |  37 +++
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c            |   2 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c            |   1 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c             |   3 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.h             |   2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_nbio.h           |   2 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c            |   9 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c       |   5 +
 drivers/gpu/drm/amd/amdgpu/athub_v2_0.c            |  12 +-
 drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c             | 266 +++++++++++++++--=
---
 drivers/gpu/drm/amd/amdgpu/hdp_v5_0.c              |  85 ++++---
 drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c            |  10 +-
 drivers/gpu/drm/amd/amdgpu/nbio_v2_3.c             |  51 +++-
 drivers/gpu/drm/amd/amdgpu/nv.c                    |  37 ++-
 drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c             |  11 +-
 drivers/gpu/drm/amd/amdgpu/smuio_v11_0.c           |   5 +-
 drivers/gpu/drm/amd/amdgpu/soc15.c                 |  10 +-
 drivers/gpu/drm/amd/amdkfd/kfd_migrate.c           | 100 +++++---
 drivers/gpu/drm/amd/amdkfd/kfd_priv.h              |   9 +
 drivers/gpu/drm/amd/amdkfd/kfd_process.c           | 272 ++++++++++++-----=
----
 .../gpu/drm/amd/amdkfd/kfd_process_queue_manager.c |   1 +
 drivers/gpu/drm/amd/amdkfd/kfd_svm.c               | 236 ++++++++++++-----=
-
 drivers/gpu/drm/amd/amdkfd/kfd_svm.h               |  19 +-
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |  13 +-
 drivers/gpu/drm/amd/display/dc/dc.h                |   1 +
 .../amd/display/dc/dce110/dce110_hw_sequencer.c    |  31 ++-
 drivers/gpu/drm/amd/display/dc/dcn31/Makefile      |   2 +
 drivers/gpu/drm/amd/display/dc/dml/Makefile        |   8 +-
 drivers/gpu/drm/amd/display/dc/irq/irq_service.c   |   4 +-
 drivers/gpu/drm/amd/display/dc/irq_types.h         |   2 +-
 drivers/gpu/drm/amd/display/dmub/src/dmub_dcn31.c  |  60 +++++
 drivers/gpu/drm/amd/display/dmub/src/dmub_dcn31.h  |  16 +-
 drivers/gpu/drm/amd/display/dmub/src/dmub_srv.c    |   5 +-
 drivers/gpu/drm/amd/include/amd_shared.h           |  10 +-
 drivers/gpu/drm/amd/include/navi10_enum.h          |   2 +-
 drivers/gpu/drm/amd/pm/amdgpu_pm.c                 |  95 ++-----
 drivers/gpu/drm/amd/pm/swsmu/amdgpu_smu.c          |   8 +-
 .../gpu/drm/amd/pm/swsmu/smu13/yellow_carp_ppt.c   |   3 +-
 drivers/gpu/drm/gma500/framebuffer.c               |   7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c           |  19 +-
 drivers/gpu/drm/i915/display/intel_dp.c            |   2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c          |   2 +-
 drivers/gpu/drm/i915/gt/intel_ring_submission.c    |   7 +-
 drivers/gpu/drm/i915/i915_drv.c                    |   1 -
 drivers/gpu/drm/i915/i915_irq.c                    |  10 +-
 drivers/gpu/drm/i915/i915_irq.h                    |   1 +
 drivers/gpu/drm/i915/i915_reg.h                    |   3 -
 drivers/gpu/drm/radeon/radeon_display.c            |   1 +
 drivers/gpu/drm/radeon/radeon_drv.c                |   8 +-
 drivers/gpu/drm/radeon/radeon_object.c             |  29 +--
 drivers/gpu/drm/radeon/radeon_object.h             |   2 +-
 drivers/gpu/drm/radeon/radeon_ttm.c                |  13 +-
 include/linux/dma-resv.h                           |   2 +-
 53 files changed, 1048 insertions(+), 504 deletions(-)
>>>>>>> bb1e7302d47f... [git pull] drm fixes for 5.14-rc1
=======
Hi Linus,

Could you please consider this pull request?

Thanks,

The following changes since commit bd3c9cdb21a2674dd0db70199df884828e37abd4:

  Merge tag 'arm64-fixes' of git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux (2021-05-14 10:52:47 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git tags/f2fs-for-5.14-rc1

for you to fetch changes up to 28607bf3aa6f9762b32dc7f1ed0488823c0651b8:

  f2fs: drop dirty node pages when cp is in error status (2021-07-06 22:05:06 -0700)

----------------------------------------------------------------
f2fs-for-5.14-rc1

In this round, we've improved the compression support especially for Android
such as allowing compression for mmap files, replacing the immutable bit with
internal bit to prohibits data writes explicitly, and adding a mount option,
"compress_cache", to improve random reads. And, we added "readonly" feature to
compact the partition w/ compression enabled, which will be useful for Android
RO partitions.

Enhancement:
 - support compression for mmap file
 - use an f2fs flag instead of IMMUTABLE bit for compression
 - support RO feature w/ extent_cache
 - fully support swapfile with file pinning
 - improve atgc tunability
 - add nocompress extensions to unselect files for compression

Bug fix:
 - fix false alaram on iget failure during GC
 - fix race condition on global pointers when there are multiple f2fs instances
 - add MODULE_SOFTDEP for initramfs

As usual, we've also cleaned up some places for better code readability.
(e.g., sysfs/feature, debugging messages, slab cache name, and docs)

----------------------------------------------------------------
Chao Yu (17):
      f2fs: compress: rename __cluster_may_compress
      f2fs: add cp_error check in f2fs_write_compressed_pages
      f2fs: restructure f2fs page.private layout
      f2fs: fix to avoid racing on fsync_entry_slab by multi filesystem instances
      f2fs: atgc: fix to set default age threshold
      f2fs: compress: remove unneeded f2fs_put_dnode()
      f2fs: compress: clean up parameter of __f2fs_cluster_blocks()
      f2fs: add MODULE_SOFTDEP to ensure crc32 is included in the initramfs
      f2fs: compress: fix to disallow temp extension
      f2fs: atgc: export entries for better tunability via sysfs
      f2fs: compress: remove unneeded preallocation
      f2fs: compress: add compress_inode to cache compressed blocks
      f2fs: swap: remove dead codes
      f2fs: swap: support migrating swapfile in aligned write mode
      f2fs: introduce f2fs_casefolded_name slab cache
      f2fs: fix to avoid adding tab before doc section
      MAINTAINERS: f2fs: update my email address

Daeho Jeong (1):
      f2fs: enable extent cache for compression files in read-only

Daniel Rosenberg (2):
      f2fs: Show casefolding support only when supported
      f2fs: Advertise encrypted casefolding in sysfs

Fengnan Chang (1):
      f2fs: compress: add nocompress extensions support

Jaegeuk Kim (8):
      f2fs: let's allow compression for mmap files
      f2fs: introduce FI_COMPRESS_RELEASED instead of using IMMUTABLE bit
      f2fs: support RO feature
      f2fs: add pin_file in feature list
      f2fs: clean up /sys/fs/f2fs/<disk>/features
      f2fs: remove false alarm on iget failure during GC
      f2fs: initialize page->private when using for our internal use
      f2fs: drop dirty node pages when cp is in error status

Joe Perches (1):
      f2fs: logging neatening

Shin'ichiro Kawasaki (1):
      f2fs: Prevent swap file in LFS mode

Tom Rix (1):
      f2fs: return success if there is no work to do

 Documentation/ABI/testing/sysfs-fs-f2fs |  57 ++++-
 Documentation/filesystems/f2fs.rst      |  50 ++++-
 MAINTAINERS                             |   2 +-
 fs/f2fs/checkpoint.c                    |   4 +-
 fs/f2fs/compress.c                      | 255 +++++++++++++++++-----
 fs/f2fs/data.c                          | 360 ++++++++++++++------------------
 fs/f2fs/debug.c                         |  13 ++
 fs/f2fs/dir.c                           |  25 ++-
 fs/f2fs/f2fs.h                          | 228 ++++++++++++++++----
 fs/f2fs/file.c                          |  37 ++--
 fs/f2fs/gc.c                            |  16 +-
 fs/f2fs/inline.c                        |   4 +-
 fs/f2fs/inode.c                         |  23 +-
 fs/f2fs/namei.c                         |  36 +++-
 fs/f2fs/node.c                          |  35 ++--
 fs/f2fs/node.h                          |  33 +--
 fs/f2fs/recovery.c                      |  29 ++-
 fs/f2fs/segment.c                       |  34 ++-
 fs/f2fs/super.c                         | 188 ++++++++++++++++-
 fs/f2fs/sysfs.c                         | 232 +++++++++++++++-----
 include/linux/f2fs_fs.h                 |   2 +
 21 files changed, 1168 insertions(+), 495 deletions(-)
>>>>>>> 4c5cc31332e1... [GIT PULL] f2fs for 5.14-rc1
